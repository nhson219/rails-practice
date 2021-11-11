class HomeController < ApplicationController
	around_action :set_locale
	before_action :authenticate_user!
	def index
		flash[:notice] = t(:hello)
	end

	private
	def set_locale(&action)
		begin
			locale = params[:locale] || I18n.default_locale
			I18n.with_locale(locale, &action)
			yield
		ensure

		end
	end

end
