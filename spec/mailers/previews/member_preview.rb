# Preview all emails at http://localhost:3000/rails/mailers/member
class MemberPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/member/send_through
  def send_through
    MemberMailer.send_through
  end

end
