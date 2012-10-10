jQuery slide captcha system with jQuery & jQuery UI for Rails 3
===============================================================

__modify from: [QapTcha](http://www.myjqueryplugins.com/QapTcha "QapTcha")__
__modify from: [rails_qaptcha](https://github.com/ZhangHanDong/rails_qaptcha "rails_qaptcha")__

Support Env:
------------
Rails3.0.8+/Ruby1.8.7+

##Usage:

In Gemfile:

    gem 'rails_qaptcha', :git => 'git://github.com/pct/rails_qaptcha.git'

Then:

    rails g rails_qaptcha:install

And add the following div to your form:

    <div class="QapTcha"></div>

In your application.js:

    $(document).ready(function(){
      $('.QapTcha').QapTcha({disabledSubmit:true,autoRevert:true,autoSubmit:true});
    });

##If you want to control it in server side, you need to judge session[:qaptcha_key]##
