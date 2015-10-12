class Professor < ActiveRecord::Base
  has_many :expertises_professors
  has_many :expertises, through: :expertises_professors
end
