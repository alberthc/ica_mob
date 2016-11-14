class Campus < ActiveRecord::Base
  has_many :campus_campus_leaders
  has_many :campus_leaders, :through => :campus_campus_leaders
  #has_and_belongs_to_many :campus_leaders
  has_many :campus_small_groups
  has_many :student_leaders

  # Campus constants
  USC = 'usc'
  UCLA = 'ucla'
  UCI = 'uci'
  CAL = 'cal'
  RUTGERS = 'rutgers'

  # List of campus constants
  VALID_CAMPUSES = [USC, UCLA, UCI, CAL, RUTGERS]

end
