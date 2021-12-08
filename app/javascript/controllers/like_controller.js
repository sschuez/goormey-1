import { Controller } from "stimulus"
import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = [ "heart" ]

  save(event){
    const heart = this.heartTarget.classList

    let url = this.data.get("url")
    let data = new FormData()
    
    console.log(url)
    
    if (heart.contains('far')) {
      // Toggle Like
      heart.replace('far', 'fas')
      Rails.ajax({
        url: url,
        type: "POST",
        data: data,
      });
    } else {
      // Toggle Unlike
      heart.replace('fas', 'far')
      Rails.ajax({
        url: url,
        type: "DELETE",
        data: data,
      });
    }  
  }
  
  
}