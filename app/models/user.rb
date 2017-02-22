class User < ApplicationRecord
	has_many :items
	validates :name, presence: true
	validates :email, uniqueness: true
	before_validation :normalize_name, on: :create
	

	protected

    def normalize_name
      self.name = name.upcase.titleize
    end

 

    
end
