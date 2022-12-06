require 'rails_helper'

RSpec.describe ListsMailbox, type: :mailbox do
  subject do
    receive_inbound_email_from_mail(
      from: 'lists@example.com',
      to: 'list@example.com',
      subject: 'Sample Subject',
      body: "I'm a sample body"
    )
  end

  before do
    @created_list = FactoryBot.create(:list, email: 'list@example.com')
  end

  it do
    expect { subject }.to change(ArchiveEmail, :count).by(1)
  end
end
