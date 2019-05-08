class SecretCodesController < ApplicationController
 load_and_authorize_resource
 skip_authorize_resource :only => [:welcome]

  def index
    @codes = SecretCode.includes(:user).all
  end

  def welcome
  end

  def generate_codes
    unless params[:scode_count].blank?
      no_of_times = params[:scode_count].to_i
      (1..no_of_times).each do |i|
        SecretCode.create(scode: SecureRandom.hex(5))
      end
    end
    redirect_to(secret_codes_url)
    flash[:info] = "#{no_of_times} Secret Codes generated successfully"
  end

end
