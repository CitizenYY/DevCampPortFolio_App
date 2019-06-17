# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_source

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
