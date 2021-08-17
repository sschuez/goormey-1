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
  has_one_attached :avatar
  
  # == Validations ==========================================================
  validates :username, uniqueness: true

  # == Scopes ===============================================================
  
  # == Callbacks ============================================================
  
  # == Class Methods ========================================================
  
  # == Instance Methods =====================================================
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
