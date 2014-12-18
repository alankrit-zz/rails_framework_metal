class Timing < ActiveRecord::Base
  belongs_to  :clinic, class_name: 'Clinic', foreign_key: 'clinic_id'
end
