class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      MessageMailer.contact_me(@contact).deliver_now
      flash.now[:notice] = "Message reçu, merci!"
      redirect_to contacts_path
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

