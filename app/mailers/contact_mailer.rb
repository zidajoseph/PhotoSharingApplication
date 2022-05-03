class ContactMailer < ApplicationMailer
    def contact_mail(contact)
        @contact = contact
    
        mail to: @contact.email, subject: "Inquiry confirmation email"
      end
end
