require 'spec_helper'

describe CommentsController do
  let(:user) {create_user!}
  let(:project) {Project.create!(:name => "Ticketee")}

  let (:ticket) do
    project.tickets.create(:title => "State transitions",
                           :description => "Can't be hacked.",
                           :user => user)
  end

  let(:state) {State.create!(:name => "New")}

end
