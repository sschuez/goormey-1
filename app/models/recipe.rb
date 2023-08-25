class Recipe < ApplicationRecord
	
	# == Constants ============================================================
	
	# == Attributes ===========================================================
	

	# == Extensions ===========================================================

	
	# == Relationships ========================================================
	has_many :ingredients, -> { order(position: :asc) }, dependent: :destroy, inverse_of: :recipe
	has_many :instructions, -> { order(position: :asc) }, dependent: :destroy, inverse_of: :recipe
	accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: :true
	accepts_nested_attributes_for :instructions, reject_if: :all_blank, allow_destroy: :true
	belongs_to :user
	# has_one_attached :photo
	has_many :likes, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_one_attached :photo do |blob|
		blob.variant :thumb, resize_and_pad: [200,200], saver: { quality: 8 }, convert: :jpeg
		blob.variant :medium, resize_to_limit: [250,250]
	end

	include PgSearch::Model
	multisearchable against: [ :name, :description ]

	# == Validations ==========================================================

	# == Scopes ===============================================================

	# == Callbacks ============================================================
	
	# == Class Methods ========================================================

	def self.search(query)
		return all unless query.present?

		results = PgSearch.multisearch(query)

		recipes = []
		results.each do |result|
			if result.searchable_type == "Recipe"
				recipes << result.searchable
			elsif result.searchable_type == "User"
				result.searchable.recipes.each do | user_recipe |
					recipes << user_recipe
				end
			else
				recipes << Recipe.find(result.searchable.recipe_id)
			end
		end

		Recipe.where(id: recipes.map(&:id))
	end
	
	# == Instance Methods =====================================================
	def published_icon
		if self.published
			Icon.call("unpublished")
		else
			Icon.call("published")
		end
	end
end
