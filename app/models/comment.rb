class Comment < ApplicationRecord
  belongs_to :recipe
  belongs_to :user

  broadcasts_to :recipe, inserts_by: :prepend

end
