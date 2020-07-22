// https://github.com/excid3/tailwindcss-stimulus-components#toggle
import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static targets = ['toggleable']

  connect () {
    this.toggleClass = this.data.get('class') || 'hidden'
  }

  toggle (event) {
    event.preventDefault()

    this.toggleableTargets.forEach(target => {
      target.classList.toggle(this.toggleClass)
    })
  }
}
