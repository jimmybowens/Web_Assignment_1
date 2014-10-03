#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
	@current_time = Time.now()	
	#record the user's last time visited the site. This will use cookies
	cookies[:last_visit]#{value:Time.now(), expires:120.days.from_now,domain:nil}
	@days_past = Time.diff(@current_time,@current_time)#not finished
  end
end
