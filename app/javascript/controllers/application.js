import { Application } from "@hotwired/stimulus"
import TextareaAutogrow from "stimulus-textarea-autogrow"
// import Rails from "@rails/ujs"

const application = Application.start()
application.register("textarea-autogrow", TextareaAutogrow)
// Rails.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
