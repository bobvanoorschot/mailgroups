class ListsMailbox < ApplicationMailbox


  def process
    return unless lists.present?

    debugger
  end

  private

  def lists
    @lists ||= List.joins(:list_members).where(email: mail.to).where(list_members: { email: mail.from })
  end
end
