import { Application } from "@hotwired/stimulus"
import TextareaAutogrow from "stimulus-textarea-autogrow"

const application = Application.start()
application.register("textarea-autogrow", TextareaAutogrow)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// Google Analytics
document.addEventListener("turbo:load", function(event) {
  window.dataLayer = window.dataLayer || []
  function gtag(){dataLayer.push(arguments)}
  gtag('js', new Date())
  gtag('config', 'GTM-MCMNLVP', {'page_location': event.detail.url})
}, false)