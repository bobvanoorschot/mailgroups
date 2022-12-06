# Preview all emails at http://localhost:3000/rails/mailers/error
class ErrorPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/error/list_not_found
  def list_not_found
    ErrorMailer.list_not_found
  end

  # Preview this email at http://localhost:3000/rails/mailers/error/not_included
  def not_included
    ErrorMailer.not_included
  end

end
