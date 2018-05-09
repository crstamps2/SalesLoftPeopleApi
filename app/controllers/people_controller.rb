class PeopleController < ApplicationController
  def index
    render json: PeopleService.get.to_camelback_keys
  end
end
