class Tag < ApplicationRecord
    has_many :gossips, through: :tag_per_gossip
end
