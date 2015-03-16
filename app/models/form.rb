class Form < ActiveRecord::Base
  has_many :columns
  belongs_to :user
end
