class EmailBreakdownService
  def self.get_breakdown_of_email(email)
    result = {}
    email.chars.uniq.each { |char| result[char] = email.count(char)}
    result
  end

  def self.get_breakdown_of_emails(array_of_emails)
    result = {}
    array_of_emails.each { |email|
      result.merge!(get_breakdown_of_email(email)) { |k, value_1, value_2| 
        value_1 + value_2}
      }
    result
  end
end