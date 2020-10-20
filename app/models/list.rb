class List < ApplicationRecord
  has_many :dash_list_joiners, :dependent => :destroy
  has_many :users, through: :dash_list_joiners
  belongs_to :organization
end
  