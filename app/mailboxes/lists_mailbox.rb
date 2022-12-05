class ListsMailbox < ApplicationMailbox

  before_processing :require_lists

  def process
  end

  private

  def require_lists
    if forwarder.projects.none?
      # Use Action Mailers to bounce incoming emails back to sender – this halts processing
      bounce_with Forwards::BounceMailer.no_projects(inbound_email, forwarder: forwarder)
    end
  end

  def list
    @list ||= List.find_by(email_address: mail.from)
  end
end
