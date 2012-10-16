Given /^that project has a ticket:$/ do |table|
  table.hashes.each do |attributes|
    @project.tickets.create!(attributes)
  end
end

#Given /^"([^\"]*)" has created a ticket for this project:$/ do |email, table|
#    table.hashes.each do |attributes|
#    @project.tickets.create!(attributes)
#  end
#end

Given /^"([^\"]*)" has created a ticket for this project:$/ do |email, table|
  table.hashes.each do |attributes|
    ticket = @project.tickets.build(attributes)
    ticket.user_id = User.find_by_email!(email).id
    ticket.save
    end
end


