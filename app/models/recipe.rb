class Recipe < ApplicationRecord
	
	# == Constants ============================================================
	
	# == Attributes ===========================================================
	
	# == Extensions ===========================================================
	
	# == Relationships ========================================================
	has_many :ingredients, inverse_of: :recipe
	has_many :instructions, inverse_of: :recipe
	accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: :true
	accepts_nested_attributes_for :instructions, reject_if: :all_blank, allow_destroy: :true
	belongs_to :user
	
	# == Validations ==========================================================
	with_options if: -> { required_for_step?(:recipe) } do
		validates :name, presence: true, length: { minimum: 2, maximum: 50}
		validates :description, presence: true, length: { minimum: 2, maximum: 250}
  end

  with_options if: -> { required_for_step?(:ingredients) } do

  end

	# with_options if: -> { required_for_step?(:instructions) } do
		
	# end

	# == Scopes ===============================================================
	
	# == Callbacks ============================================================
	
	# == Class Methods ========================================================
	enum form_steps: {
		recipe: [:name, :description],
		ingredients: [ingredients_attributes: [:id, :name, :description, :amount, :measurement, :_destroy]],
		instructions: [instructions_attributes: [:id, :description, :_destroy]]
	}
	attr_accessor :form_step
	
	# == Instance Methods =====================================================
	def required_for_step?(step)
		# All fields are required if no form step is present
		return true if form_step.nil?
	
		# All fields from previous steps are required
		ordered_keys = self.class.form_steps.keys.map(&:to_sym)
		!!(ordered_keys.index(step) <= ordered_keys.index(form_step))
	end

end
