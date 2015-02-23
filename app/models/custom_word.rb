class CustomWord < ActiveRecord::Base
	belongs_to :user

	after_commit :flush_cache

	def flush_cache
	  Rails.cache.delete([self.class.name, key, user_id])
	end

	def self.fetch_cache_word key, user_id
		Rails.cache.fetch([name, key, user_id]) do
			where(key: key.to_s, user_id: user_id).first.word
		end
	end

end
