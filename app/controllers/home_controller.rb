class HomeController < ApplicationController
  def index
    @department = Department.all
  end

  def profilepage 
    @department = Department.find(params[:id])
  end
end
