  def order_confirmation_user
    contact = Contact.last
    ContactMailer.contact_me(contact)
  end
