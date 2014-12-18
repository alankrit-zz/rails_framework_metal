class DoctorsController < ActionController::Metal
  include ActionController::Rendering
  include AbstractController::Rendering
  include ActionController::MimeResponds 
  include ActionController::ImplicitRender 
  include ActionController::Renderers::All
  append_view_path "#{Rails.root}/app/views"

  def index
    doctors = Doctor.all
    render :json => {:doctors => doctors}, :status => 200
  end

  def show
    @d = Doctor.find_by(id: params[:id])
    if @d.blank?
      render :json  => {:error => "No such Entry"}, :status => 401 and return
    else
      render :show
    end
  end

  def create
    d = Doctor.create!(first_name:  params[:first_name],
                       last_name:   params[:last_name],
                       age:         params[:age],
                       desc:        params[:desc],
                       random:      params[:random])

    c = d.clinics.create!(name:     params[:clinic_name],
                          services: params[:clinic_services],
                          desc:     params[:clinic_desc])

    rand(2..6).times {|j| c.timings.create!(day: Date::DAYNAMES.sample, time: Faker::Number.digit) }
    if not d.id.blank?
      render :json => {:success => "Doctor created", doctor: d}, :status => 200 and return
    else
      render :json => {:error => "Doctor Not Created"}, :status => 401 and return
    end
  end
end
