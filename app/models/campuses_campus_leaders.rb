class CampusesCampusLeaders < ActiveRecord::Base

  belongs_to :campus
  belongs_to :campus_leader

end
