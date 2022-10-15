class Blog < ApplicationRecord
	# validates_presence_of :title, :content
	has_rich_text :content
	paginates_per 5
	enum status: { draft: 0 , published: 1}
end
