class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "contact", new_contact_path
  end

  def create
    @contact = Contact.new(contact_params)
    if verify_recaptcha(model: @contact) && @contact.valid?
      flash[:notice] = "Votre message a bien été envoyé, merci!"
      ContactMailer.contact_me(@contact).deliver_now
      redirect_to new_contact_path
    else
      flash[:alert] = "Un probleme est survenu, merci de réessayer."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :body)
  end
end
