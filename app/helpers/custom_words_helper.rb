module CustomWordsHelper

	def custom key
		CustomWord.where(key: key.to_s, user: current_user).first.word
	end

end
