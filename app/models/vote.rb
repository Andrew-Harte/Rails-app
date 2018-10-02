class Vote < ApplicationRecord
	
		belongs_to :post
		belongs_to :user
		validates :user_id, uniqueness: { scope: :post_id }

	enum status: {up: 1, down: -1}
end
