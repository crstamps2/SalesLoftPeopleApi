class PeopleService
  def self.get
    HTTParty.get(url, headers: headers)
  end

  private

  def self.url
    Rails.application.config.salesloft_api_url + '/people.json'
  end

  def self.headers
    {
        "Authorization":"Bearer #{Rails.application.config.salesloft_api_key}"
    }
  end
end
