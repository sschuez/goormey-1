class User < ApplicationRecord
  # == Constants ============================================================
  
  # == Attributes ===========================================================
  
  # == Extensions ===========================================================
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  # == Relationships ========================================================
  has_many :recipes
  
  # == Validations ==========================================================
  
  # == Scopes ===============================================================
  
  # == Callbacks ============================================================
  
  # == Class Methods ========================================================
  
  # == Instance Methods =====================================================
  
end
