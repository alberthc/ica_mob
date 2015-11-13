class CampusLeader < ActiveRecord::Base
  has_many :campus_campus_leaders
  has_many :campuses, :through => :campus_campus_leaders

  def self.get_campus_leaders_columns(campus_leaders)
    campus_leaders_column_1 = Array.new
    campus_leaders_column_2 = Array.new

    column_index = 1
    campus_leaders.each do |campus_leader|
      if column_index % 2 != 0
        campus_leaders_column_1.push campus_leader
      else
        campus_leaders_column_2.push campus_leader
      end
      column_index += 1
    end

    return {column_1: campus_leaders_column_1,
            column_2: campus_leaders_column_2} 
  end
end
