class ContactMailer < ApplicationMailer
  def new_contact
    @contact = params[:contact]
    mail(
      to: @contact.email,
      bcc: "stephens@hey.com",
      subject: "Thanks for getting in touch!",
      track_opens: true,
      message_stream: 'outbound'
    )
  end
end
