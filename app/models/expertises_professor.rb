class ExpertisesProfessor < ActiveRecord::Base
  belongs_to :expertise
  belongs_to :professor
end
