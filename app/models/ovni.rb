class Ovni < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :price, :details, :city ],
    using: {
      tsearch: { prefix: true }
    }
end
