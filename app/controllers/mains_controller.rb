class MainsController < ApplicationController
	before_action :authenticate_user!, only:[:users]
	before_action :authenticate_admin!,only:[:admin]
	before_action :authenticate_moderator,only:[:moderator]
  def index
  	
  end

  def new
  
  end
  def users
  end

  def admin
  end

  def moderator
  end
  def dashboard
  	
  end
def show

end
end
