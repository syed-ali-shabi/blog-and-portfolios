class Portfolio < ApplicationRecord
	validates_presence_of :title , :subtitle , :body
	has_rich_text :abc
	has_many :technologies
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body
	def self.by_position
		order("position ASC")
		
	end
end
