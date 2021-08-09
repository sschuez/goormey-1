import { Controller } from "stimulus"
import Rails from "@rails/ujs"
import { Sortable } from "sortablejs"

export default class extends Controller {
  connect() {
    this.sortable = Sortable.create(this.element, {
      onEnd: this.end.bind(this),
    });
  }

  end(event) {
    // let id = event.item.dataset.id
    // console.log(event.item.dataset)
    // let instructionId /= event.item.dataset.instructionId
    // console.log(event.item.dataset)
    // let data = new FormData()
    // data.append("position", event.newIndex + 1)

    let id = event.item.dataset.id
    // let recipe_id = event.item.dataset.recipeId
    console.log(event.item.dataset)

    let url = this.data.get("url")
    url = url.replace(":id", id)
    // url = url.replace(":recipe_id", recipe_id)
    console.log(url)
    
    let data = new FormData()
    data.append("position", event.newIndex + 1)
    
    Rails.ajax({
      url: url, //this.data.get("url").replace(":id", id),
      type: "PATCH",
      data: data,
    });
  }
}