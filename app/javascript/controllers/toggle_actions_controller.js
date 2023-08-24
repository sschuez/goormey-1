import { Controller } from "@hotwired/stimulus"
import e from "local-time"

// Connects to data-controller="toggle-actions"
export default class extends Controller {
  static targets = [ "actions" ]
  
  toggle(e) {
    e.preventDefault()

    this.actionsTargets.forEach((el) => {
      el.classList.toggle('visually-hidden')
    })
  }
}
