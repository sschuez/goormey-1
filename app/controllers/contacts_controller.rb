class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    authorize @contact
  end
  
  def create
    @contact = Contact.new(contact_params)
    authorize @contact

    if @contact.save
      redirect_to root_path, notice: "Thanks for your message. You will receive a confirmation at #{@contact.email} shortly."
      message = ContactMailer.with(contact: @contact).new_contact
      message.deliver_now
    else
      render :new, notice: "There was an error sending your contact form. Please try agian."
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end

end
