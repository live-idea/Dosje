class HomeController < ApplicationController
  def index
    @categories = Category.all
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end

end
