class Gossip < ApplicationRecord
    belongs_to :user
    has_many :tags, through: :tag_per_gossip
end
