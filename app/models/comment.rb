class Comment < ApplicationRecord
  #Organisation Model (Shortcut: mstr)
  # == Constants ============================================================
  
  # == Attributes ===========================================================
  
  # == Extensions ===========================================================
  
  # == Relationships ========================================================
  belongs_to :recipe
  belongs_to :user

  broadcasts_to :recipe, inserts_by: :prepend
  
  # == Validations ==========================================================
  validates :content, presence: true, length: { minimum: 1, maximum: 200}

  # == Scopes ===============================================================
  
  # == Callbacks ============================================================
  
  # == Class Methods ========================================================
  
  # == Instance Methods =====================================================
  
end
