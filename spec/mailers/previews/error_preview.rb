# Preview all emails at http://localhost:3000/rails/mailers/error
class ErrorPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/error/not_included
  def not_included
    ErrorMailer.not_included
  end

end
