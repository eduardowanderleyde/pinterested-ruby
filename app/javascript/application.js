// app/javascript/application.js

// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@rails/ujs"
import "jquery"
import "bootstrap"
//= require turbolinks
//= require_tree .

document.addEventListener('turbo:load', () => {
  const imageInput = document.querySelector('#pin_image');
  if (imageInput) {
    const preview = document.createElement('img');
    preview.classList.add('img-responsive');
    preview.style.display = 'none';
    imageInput.parentNode.appendChild(preview);

    imageInput.addEventListener('change', (event) => {
      const file = event.target.files[0];
      if (file) {
        const reader = new FileReader();
        reader.onload = (e) => {
          preview.src = e.target.result;
          preview.style.display = 'block';
        };
        reader.readAsDataURL(file);
      } else {
        preview.style.display = 'none';
      }
    });
  }
});
