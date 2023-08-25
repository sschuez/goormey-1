import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-actions"
export default class extends Controller {
  static targets = [ "actions" ]
  
  connect() {
    this.element.classList.add("hide-items")

    this.actionsTargets.forEach((el) => {
      el.classList.add('visually-hidden')
    })
  }

  toggle(e) {
    e.preventDefault()

    if (this.element.classList.contains("hide-items")) {
      this.element.classList.remove("hide-items")
    } else {
      this.element.classList.add("hide-items")
    }

    this.actionsTargets.forEach((el) => {
      // el.classList.toggle('visually-hidden')
      // if (this.state === "hidden") {
      //   el.classList.add('visually-hidden')
      // } else {
      //   el.classList.remove('visually-hidden')
      // }
      if (this.element.classList.contains("hide-items")) {
        el.classList.add('visually-hidden')
      } else {
        el.classList.remove('visually-hidden')
      }
    })
  }
}
