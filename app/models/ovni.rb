class Ovni < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :price, :details ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
