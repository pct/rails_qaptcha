require 'rails/generators'

# =================================
# = rails g rails_qaptcha:install =
# =================================

module RailsQaptcha
  module Generators

    class InstallGenerator < Rails::Generators::Base
      
      source_root File.expand_path('../media', __FILE__)
      desc "Copies media files to main project"
      def copy_media_files
        copy_file "../media/images/bg_draggable_qaptcha.jpg", "public/assets/images/bg_draggable_qaptcha.jpg"
        copy_file "../media/javascripts/jquery-ui.js",        "app/assets/javascripts/qaptcha/jquery-ui.js"
        copy_file "../media/javascripts/jquery.ui.touch.js",  "app/assets/javascripts/qaptcha/jquery.ui.touch.js"
        copy_file "../media/javascripts/QapTcha.jquery.js",   "app/assets/javascripts/qaptcha/qaptcha.jquery.js"
        copy_file "../media/stylesheets/QapTcha.jquery.css",  "app/assets/stylesheets/qaptcha/qaptcha.jquery.css"
      end
    end

  end
end
