class Recipe < ApplicationRecord
	has_many :ingredients, inverse_of: :recipe
	belongs_to :user
	accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: :true

end
