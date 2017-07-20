class User < ApplicationRecord
	validates :name, presence: true
	validates :email,  uniqueness: true
	has_many :items, dependent: :destroy

	before_save :norm_name

	def norm_name
	 	if name.present?
	 		self.name = self.name[0].upcase 
	 	end
	end 
end
