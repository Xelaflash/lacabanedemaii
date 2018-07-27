class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "contact", contact_new_path
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.contact_me(@contact).deliver_now
      flash.now[:notice] = "Votre message a bien été envoyé, merci!"
      redirect_to new_contact_path
    else
      flash.now[:alert] = "Un probleme est survenu, merci de réessayer."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone_number, :body)
  end
end

