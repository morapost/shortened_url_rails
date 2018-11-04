# generate_short_url
# 		- get the original url and email
# 		- generate alphanumeric value
# 		- lookup the generated alphanumeric in the model
# 		- if exists, return the short url
# 		- else, form the short url with format <host from original url> + /I/ + <alphanumeric value>
# 		- call url_shared method

# 	url_shared
# 		Create record for logged in user_id and short_url_id



class ShortUrl < ApplicationRecord

	attr_accessor :format_short_url

	has_many :url_shareds

	def self.find_or_generate_short_url(url,email)
		normalize_url = PostRank::URI.clean(url) 
		lookup_existence = ShortUrl.where(original_url: normalize_url, email: email).last
		return lookup_existence if lookup_existence.present?
		create_short_url = ShortUrl.new(original_url: normalize_url, email: email)
		create_short_url.short_url = ([*('a'..'z'), *(1..9), *('A'..'Z')]).sample(6).join
		create_short_url.save
		create_short_url
	end

	

	
end
