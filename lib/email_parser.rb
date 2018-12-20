class EmailParser 
  attr_accessor :name, :csv_emails
  
  def initialize(csv_emails)
    @csv_emails = csv_emails
  end 

  def parse 
    csv_emails.split.map do |address|
      address.split(',') 
    end
    .flatten.uniq 
  end 
end 

# emails1 = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
# parser1 = EmailParser.new(emails1)
# parser1.parse 

# emails2 = "avi@test.com, arel@test.com test@avi.org, test@avi.org"
# parser2 = EmailParser.new(emails2)
# parser2.parse