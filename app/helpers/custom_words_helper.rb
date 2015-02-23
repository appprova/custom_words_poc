module CustomWordsHelper

	def custom key
		CustomWord.fetch_cache_word(key, current_user.id)
	end

end
