import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="slider"
export default class extends Controller {
  static targets = [ "source" ]
  
  connect() {
    var slider = this.sourceTarget
    
    slider.addEventListener("change", function() {
      // Insert source value from slider into hidden form value as answer
      var destination = document.querySelector(".scale-form")
      var source = document.getElementById("customRange3").value
      destination.value = source

      // Indicate live current selection
      var sliderSelection = document.getElementById("sliderSelection")
      sliderSelection.innerHTML = source
  }, false); 
  }
  
}
