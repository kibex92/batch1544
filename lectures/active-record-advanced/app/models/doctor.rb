class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :first_name, presence: true
  validates :last_name, presence: true, uniqueness: { scope: :first_name }
end