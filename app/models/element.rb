class Element < ActiveRecord::Base

  validates :todo, presence: true

  belongs_to :list

end
