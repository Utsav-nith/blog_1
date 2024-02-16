class Post < ApplicationRecord
    validates:title, presence: {message:"Title required"}
    validates:content, presence:{message:"Content required"}
    has_many :comments, dependent: :destroy
end
