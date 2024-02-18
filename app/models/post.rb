class Post < ApplicationRecord
    validates:title, presence: {message:"Title required"}
    validates:content, presence:{message:"Content required"}
    has_many :comments, dependent: :destroy
    # has_many :likes, dependent: :destroy
    def self.ransackable_attributes(auth_object = nil)
        ["content", "created_at", "id", "title", "updated_at"]
      end
end
