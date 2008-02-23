# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  include AuthenticatedSystem
  before_filter :login_required, :only => [:new, :create, :edit, :update, :destroy]
  before_filter :authentication_information

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '30467657bb1482a3dc8d9f007a14f238'
  
  protected
  
  def authentication_information
    @current_user = current_user
  end
end
