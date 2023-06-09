import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nav"
export default class extends Controller {

  static targets = ["menuList"]
  static values = {opened: Boolean}
  connect() {
  }

  initialize() {
    this.opened = false
    this.menuListTarget.classList.remove('h-screen')
    this.menuListTarget.classList.add('h-0')
  }

  toggle(){
    if(this.opened){
      this.menuListTarget.classList.remove('h-screen')
      this.menuListTarget.classList.add('h-0')
      document.body.style.overflowY = 'auto'
      this.opened = !this.opened
    }else{
      this.menuListTarget.classList.remove('h-0')
      this.menuListTarget.classList.add('h-screen')
      document.body.style.overflowY = 'hidden'
      this.opened = !this.opened
    }
  }
}
