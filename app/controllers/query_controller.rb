class QueryController < ApplicationController
  def index
    @employees = Employee.all
  end
end
