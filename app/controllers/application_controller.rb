class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
		flash[:warning] = exception.message
		redirect_to pokemons_path
	end
end
