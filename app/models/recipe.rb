class Recipe < ActiveRecord::Base
  has_many :lists
  has_many :ingredients, through: :lists

  validates :name, presence: true
  validates :batch_size, presence: true, numericality: { greater_than: 0 }
  belongs_to :user

  accepts_nested_attributes_for :lists
end
