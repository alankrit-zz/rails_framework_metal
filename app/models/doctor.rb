class Doctor < ActiveRecord::Base
  has_many :clinics, class_name: 'Clinic', foreign_key: 'doctor_id'
end
