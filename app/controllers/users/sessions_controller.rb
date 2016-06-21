class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  respond_to :json, :html

 def destroy
   current_user.authentication_token = nil
   super
 end

 def options
   set_headers
   render :text => '', :content_type => 'text/plain'
 end


 protected
   def verified_request?
     request.content_type == "application/json" || super
   end
end
