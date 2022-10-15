class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :set_copyright
	before_action :set_source
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up , keys: [:name])
		devise_parameter_sanitizer.permit(:account_update , keys: [:name])
	end


	def set_source
		session[:source] = params[:q] if params[:q]
	end

	def current_user
		super || guest_user 
	end

	def guest_user
		guest = GuestUser.new
		guest.name = "Guest User"
		guest.first_name = "Guest"
		guest.last_name = "User"
		guest.email = "guest@example.com"
		guest
	end

	def set_copyright
		@copyright = OctascaleViewTool::Renderer.copyright 'Octascale Technologies Pvt Ltd', 'All right reserved'
	end
	module OctascaleViewTool
		class Renderer
			def self.copyright(name, msg)
				"&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
			end
		end
	end

end