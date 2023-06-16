// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import $ from 'jquery'

import "@hotwired/turbo-rails"
document.addEventListener('turbo:submit-start', function (event) {
  var message = event.detail.formSubmission.button.getAttribute('data-turbo-confirm');
  if (message && !confirm(message)) {
    event.preventDefault();
  }
});
import "controllers"
