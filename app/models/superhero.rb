class Superhero < ApplicationRecord
	belongs_to :superpower

	validates :super_name, uniqueness: true

	def self.search(search)
		# byebug
  		Superhero.where(superpower_id: Superpower.find_by(name:search).id)
	end
end
