class CampusLeader < ActiveRecord::Base
  has_many :campus_campus_leaders
  has_many :campuses, :through => :campus_campus_leaders
  #has_and_belongs_to_many :campuses
end
