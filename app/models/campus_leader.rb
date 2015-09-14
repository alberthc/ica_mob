class CampusLeader < ActiveRecord::Base

  has_many :campuses_campus_leaders
  has_many :campuses, :through => :campuses_campus_leaders

end
