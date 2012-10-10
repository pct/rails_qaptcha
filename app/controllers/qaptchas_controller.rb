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
    iqaptcha = params[:qaptcha_key]
    if iqaptcha.blank?
      session[:qaptcha_key] = true 
      msg = "通過認證！"
    else
      session[:qaptcha_key] = false
      msg = "沒有通過認證！"
    end
    @result = {:check => session[:qaptcha_key], :msg => msg}
    respond_to do |format|
      format.json { render :json => @result.to_json }
    end
  end #check

end
