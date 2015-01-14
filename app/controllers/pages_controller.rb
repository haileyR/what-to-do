class PagesController < ApplicationController
  def index
  end



  def register_form
    @user = User.new()
  end
end
