class ShortUrlsController < ApplicationController
	
 
	before_action :authenticate_user!, only: [:create]

	def index
		@urls = ShortUrl.all
		@shared_urls = UrlShared.all 
	end

	def create
		
		@url = ShortUrl.find_or_generate_short_url(params[:original_url], params[:email])
		UrlShared.create(user_id: current_user.id, short_url_id: @url.id)

		render json: {short_url: shortened_url(short_url_hash: @url.short_url)}
	end

	def show
		@url = ShortUrl.where( short_url: params[:short_url_hash]).last
		if @url.present?
			redirect_to @url.original_url
		else
			return raise ActiveRecord::RecordNotFound
		end
	end
end
