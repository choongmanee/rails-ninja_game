class RpgController < ApplicationController
  def index
  
  	if session[:gold]==nil
  		session[:gold]=0
   		session[:gold]
   	end

  end

  def farm
  	roll = rand(10..20)
  	time = Time.new
  	session[:gold]=session[:gold].to_i+roll.to_i
  	if session[:activity]
  	old = session[:activity]
  	session[:activity] = old+"Earned "+roll.to_s+" golds from the farm! "+time.strftime("%Y/%m/%d %H:%M %p")+"</br>"
  	else
  	session[:activity] ="Earned "+roll.to_s+" golds from the farm! "+time.strftime("%Y/%m/%d %H:%M %p")+"</br>"
  	end
  	redirect_to root_url
  end

  def cave
  	roll = rand(5..10)
  	time = Time.new
  	session[:gold]=session[:gold].to_i+roll.to_i
  	if session[:activity]
  	old = session[:activity]
  	session[:activity] = old+"Earned "+roll.to_s+" golds from the cave! "+time.strftime("%Y/%m/%d %H:%M %p")+"</br>"
  	else
  	session[:activity] ="Earned "+roll.to_s+" golds from the cave! "+time.strftime("%Y/%m/%d %H:%M %p")+"</br>"
  	end
  	redirect_to root_url
  end

  def house
  	roll = rand(2..5)
  	time = Time.new
  	session[:gold]=session[:gold].to_i+roll.to_i
  	if session[:activity]
  	old = session[:activity]
  	session[:activity] = old+"Earned "+roll.to_s+" golds from the house! "+time.strftime("%Y/%m/%d %H:%M %p")+"</br>"
  	else
  	session[:activity] ="Earned "+roll.to_s+" golds from the house! "+time.strftime("%Y/%m/%d %H:%M %p")+"</br>"
  	end
  	redirect_to root_url
  end

  def casino
  	roll = rand(-50..50)
  	time = Time.new
  	session[:gold]=session[:gold].to_i+roll.to_i
  	if roll < 0
	  	if session[:activity]
	  	old = session[:activity]
	  	session[:activity] = old+"Lost "+roll.to_s+" golds from the casino! "+time.strftime("%Y/%m/%d %H:%M %p")+"</br>"
	  	else
	  	session[:activity] ="Lost "+roll.to_s+" golds from the casino! "+time.strftime("%Y/%m/%d %H:%M %p")+"</br>"
	  	end
  	else
	  	if session[:activity]
	  	old = session[:activity]
	  	session[:activity] = old+"Earned "+roll.to_s+" golds from the casino! "+time.strftime("%Y/%m/%d %H:%M %p")+"</br>"
	  	else
	  	session[:activity] ="Earned "+roll.to_s+" golds from the casino! "+time.strftime("%Y/%m/%d %H:%M %p")+"</br>"
	  	end
  	end
  	redirect_to root_url
  end

  def reset
  	reset_session
  	redirect_to root_url
  end

end
