class Clinic < ActiveRecord::Base
  has_many    :timings, class_name: 'Timing', foreign_key: 'clinic_id'
  belongs_to  :doctor, class_name: 'Doctor', foreign_key: 'doctor_id'
end
