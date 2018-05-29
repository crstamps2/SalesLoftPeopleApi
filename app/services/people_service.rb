class PeopleService
  def self.get
    HTTParty.get(people_url, headers: headers)
  end

  def self.get_person(id)
    HTTParty.get(person_url(id), headers: headers)
  end

  private

  def self.person_url(id)
    Rails.application.config.salesloft_api_url + "/people/#{id}.json"
  end

  def self.people_url
    Rails.application.config.salesloft_api_url + '/people.json'
  end

  def self.headers
    {
        "Authorization":"Bearer #{Rails.application.config.salesloft_api_key}"
    }
  end
end
