class Review < ApplicationRecord
  belongs_to :product

  validates :author, presence: true
    validates_length_of :author, maximum: 100

    before_save(:titleize_review)

    private
        def titleize_review
          self.author = self.author.titleize
        end
end
