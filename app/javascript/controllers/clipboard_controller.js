import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="clipboard"
export default class extends Controller {
  static targets = [ "source" ]

  copy() {
    console.log(this.sourceTarget.innerHTML)
    navigator.clipboard.writeText(this.sourceTarget.innerHTML.trim())
  }
}
