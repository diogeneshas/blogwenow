class Article < ApplicationRecord
    belongs_to :user
    has_one_attached :featured_image
    has_rich_text :body
    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true
    validates :featured_image, presence: true
end
