class PeopleController < ApplicationController
  def index
    render json: PeopleService.get
  end
end
