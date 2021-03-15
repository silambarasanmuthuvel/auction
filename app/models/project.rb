class Project < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates_presence_of :user
  validates_presence_of :category
end
