class List < ActiveRecord::Base

  validates :title, :presence => true

  has_many :elements, dependent: :destroy

end
