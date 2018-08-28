  def contact_me
    contact = Contact.last
    ContactMailer.contact_me(contact)
  end
