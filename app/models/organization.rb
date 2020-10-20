class Organization < ApplicationRecord
  belongs_to :category
  has_many :lists, :dependent => :destroy
end
