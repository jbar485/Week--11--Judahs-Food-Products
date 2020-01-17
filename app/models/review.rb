class Review < ApplicationRecord
  belongs_to :product

  validates :author, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true
    validates_length_of :author, maximum: 100
    validates_length_of :content_body, minimum: 50, maximum: 250

    before_save(:titleize_review)

    private
        def titleize_review
          self.author = self.author.titleize
        end
end
