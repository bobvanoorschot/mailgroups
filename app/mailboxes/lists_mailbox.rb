class ListsMailbox < ApplicationMailbox


  def process
    return unless lists.present?

    lists.each do |list|
      list.list_members.each do |member|
        MemberMailer.send_through(member, mail).deliver_now
      end

      archive(list) if list.archive
    end
  end

  private

  # Archive email
  def archive(list)
    list.archive_emails.create(
      subject: mail.subject,
      sender: mail.from,
      body: mail.body.decoded
    )
  end

  def lists
    @lists ||= List.joins(:list_members).where(email: mail.to).where(list_members: { email: mail.from })
  end
end
