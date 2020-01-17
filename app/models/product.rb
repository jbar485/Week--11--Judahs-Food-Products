class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  scope :usa, -> { where(country_of_origin: "USA") }
  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true
  validates_length_of :name, maximum: 100

    before_save(:titleize_product)

    private
        def titleize_product
          self.name = self.name.titleize
          self.country_of_origin = self.country_of_origin.upcase
        end
end
