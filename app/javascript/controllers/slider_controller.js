import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="slider"
export default class extends Controller {
  static targets = [ "source" ]
  
  connect() {
    var slider = this.sourceTarget
    var storedValue = document.getElementById("sliderDiv").value
    console.log(storedValue);
    slider.addEventListener("change", function() {
      var destination = document.querySelector(".scale-form")
      var source = document.getElementById("customRange3").value
      destination.value = source
      var sliderSelection = document.getElementById("sliderSelection")
      sliderSelection.innerHTML = source
  }, false); 
  }
  
}
