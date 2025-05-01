class HomeController < ApplicationController
  def home
    render({ :template => "home"})
  end
end
