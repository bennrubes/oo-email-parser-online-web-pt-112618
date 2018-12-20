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

# emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
# test_1 = EmailParser.new(emails)
# test_1.parse 

# emails_with_duplicates = "avi@test.com, arel@test.com test@avi.org, test@avi.org"
# test_2 = EmailParser.new(emails_with_duplicates)
# test_2.parse