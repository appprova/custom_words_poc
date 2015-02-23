class CustomWord < ActiveRecord::Base
	belongs_to :user

	def self.fetch_cache_word key, user_id
		Rails.cache.fetch([name, key, user_id]) { where(key: key.to_s, user_id: user_id).first.word }
	end

end
