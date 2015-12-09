class Profile < ActiveRecord::Base
  belongs_to :user
  has_one :schedule

  serialize :availability, Array
  
  AVAILABILITY = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
end
