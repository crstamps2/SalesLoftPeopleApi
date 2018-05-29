require 'rails_helper'

RSpec.describe EmailBreakdownService, type: :service do
  describe '#get_breakdown_of_email' do

    it 'gives a breakdown as a hash of an email' do
      expected = {"t"=>2, "e"=>3, "s"=>1, "@"=>1, "x"=>1, "a"=>1, "m"=>2, "p"=>1, "l"=>1, "."=>1, "c"=>1, "o"=>1}
      result = EmailBreakdownService.get_breakdown_of_email('test@example.com')
      expect(result).to eq expected
    end

    it 'works for a different email' do
      expected = {"h"=>2, "e"=>2, "y"=>2, "@"=>1, "."=>1, "c"=>1, "o"=>1, "m"=>1}
      result = EmailBreakdownService.get_breakdown_of_email('hey@hey.com')
      expect(result).to eq expected
    end
  end

  describe '#get_breakdown_of_emails' do
    it 'returns a breakdown of an array of emails' do
      emails = ['test@example.com', 'hey@hey.com']
      expected = {"t"=>2, "e"=>5, "s"=>1, "@"=>2, "x"=>1, "a"=>1, "m"=>3, "p"=>1, "l"=>1, "."=>2, "c"=>2, "o"=>2, "h"=>2, "y"=>2}
      result = EmailBreakdownService.get_breakdown_of_emails(emails)
      expect(result).to eq expected
    end

    it 'still works with different emails' do
      emails = ['something@example.com', 'wicked@hey.com']
      expected = {"s"=>1, "o"=>3, "m"=>4, "e"=>5, "t"=>1, "h"=>2, "i"=>2, "n"=>1, "g"=>1, "@"=>2, "x"=>1, "a"=>1, "p"=>1, "l"=>1, "."=>2, "c"=>3, "w"=>1, "k"=>1, "d"=>1, "y"=>1}
      result = EmailBreakdownService.get_breakdown_of_emails(emails)
      expect(result).to eq expected
    end
  end
end