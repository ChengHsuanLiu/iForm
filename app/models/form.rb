class Form < ActiveRecord::Base
  has_many :columns
  has_many :submissions
  has_many :users, through: :submissions
end
