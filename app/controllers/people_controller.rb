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

  def emailBreakdown
    people = PeopleService.get.to_camelback_keys
    email = people[:data].detect { |person| 
      person[:id] == params['id'].to_i 
    }[:emailAddress]
    render json: EmailBreakdownService.get_breakdown_of_email(email)
  end
end
