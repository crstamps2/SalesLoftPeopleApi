require "awrence"

class PeopleController < ApplicationController
  def index
    render json: PeopleService.get.to_camelback_keys
  end

  def allEmailBreakdown
    people = PeopleService.get.to_camelback_keys
    emails = people[:data].map { |person| person[:emailAddress] }
    render json: EmailBreakdownService.get_breakdown_of_emails(emails)
  end

end
