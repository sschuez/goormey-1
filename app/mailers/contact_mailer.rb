class ContactMailer < ApplicationMailer
  def new_contact
    @contact = params[:contact]
    mail(
      to: @contact.email,
      subject: "Thanks for getting in touch!",
      track_opens: true,
      message_stream: 'outbound'
    )
  end
end
