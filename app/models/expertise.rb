class Expertise < ActiveRecord::Base
  has_many :expertises_professors
  has_many :professors, through: :expertises_professors, dependent: :destroy

  validates :name, uniqueness: true
end
