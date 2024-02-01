class Post < ApplicationRecord
  # Your other associations or validations may be here
  
  # Make sure you have these attributes defined
  attribute :title, :string
  attribute :content, :text

  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings
end
