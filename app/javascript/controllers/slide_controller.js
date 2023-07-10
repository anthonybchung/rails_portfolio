import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="slide"
export default class extends Controller {

  static targets = ["slidingWindow"]
  static values = {offSet: Number, projects: Number, projectWindow: Number}

  initialize() {
    this.offSetValue = 0
    this.slidingWindowTarget.style.left = `${this.offSetValue}px`
    this.projectWindowValue = (this.projectsValue-4) * 160 *  -1
  }

  left(){
    if(this.offSetValue < 0){
      this.offSetValue += 160
    }

    if(this.offSetValue > 0){
      this.offSetValue = 0
    }
    this.slidingWindowTarget.style.left = `${this.offSetValue}px`
  }

  right(){
    if(this.offSetValue > this.projectWindowValue){
      this.offSetValue -= 160
    } else {
      this.offSetValue = this.projectWindowValue
    }
    this.slidingWindowTarget.style.left = `${this.offSetValue}px`
  }
}
