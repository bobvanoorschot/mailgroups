require 'rails_helper'

RSpec.describe ListsMailbox, type: :mailbox do
  subject do
    @list = FactoryBot.create(:list, email: 'list@example.com', archive: true)
    @list_member = FactoryBot.create(:list_member, email: 'email@meber.to', list: @list)
    receive_inbound_email_from_mail(
      from: @list_member.email,
      to: @list.email,
      subject: 'Sample Subject',
      body: "I'm a sample body"
    )
  end

  describe 'Get an email' do
    it do
      expect { subject }.to  change(ArchiveEmail, :count).by(1)
    end

  end
end
