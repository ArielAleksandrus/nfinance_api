class Storetag < ApplicationRecord
	extend Enumerize
	enumerize :pattern_type, in: [:matches, :begins_with, :ends_with, :contains], default: :matches
	enumerize :status, in: [:unverified, :verified, :flagged], default: :unverified
	attribute :score, default: 0

	validates_presence_of :term
end
