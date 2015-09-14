class Campus < ActiveRecord::Base

  has_many :campuses_campus_leaders
  has_many :campus_leaders, :through => :campuses_campus_leaders
  has_one :campus_small_group

  # Campus constants
  USC = 'usc'
  UCLA = 'ucla'
  UCI = 'uci'
  CAL = 'cal'
  RUTGERS = 'rutgers'

  # List of campus constants
  VALID_CAMPUSES = [USC, UCLA, UCI, CAL, RUTGERS]

end
