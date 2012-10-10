# coding: utf-8
# 
#  qaptchas_controller.rb
#  rails_qaptcha
#  
#  Created by Zhang Alex on 2011-06-27.
#  Copyright 2011 __blackanger.z@gmail.com__. All rights reserved.
#

class QaptchasController < ApplicationController

  def check
    _check = params[:_check]
    iqaptcha = params[:qaptcha_key]

    if _check and iqaptcha
      session[:qaptcha_key] = false

      if _check == 'qaptcha'
        session[:qaptcha_key] = params[:qaptcha_key]
        msg = "passed!"
      else
        session[:qaptcha_key] = false
        msg = "you should not pass!"
      end
    end

    @result = {:check => session[:qaptcha_key], :msg => msg}
    respond_to do |format|
      format.json { render :json => @result.to_json }
    end
  end #check

end
