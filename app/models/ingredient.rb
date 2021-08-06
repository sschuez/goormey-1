class Ingredient < ApplicationRecord

  #Organisation Model (Shortcut: mstr)
  # == Constants ============================================================
  MEASUREMENTS = ["g","kg", "tbs", "tsp", "l", "ml", "pcs", "clove"]   
  # == Attributes ===========================================================
  
  # == Extensions ===========================================================
  
  # == Relationships ========================================================
  belongs_to :recipe
  
  # == Validations ==========================================================
  validates :name, presence: true
  validates :amount, numericality: true

  # == Scopes ===============================================================
  
  # == Callbacks ============================================================
  
  # == Class Methods ========================================================
  
  # == Instance Methods =====================================================
  
end
