class WelcomeController < ApplicationController

  def index
    @memorials = Memorial.take(5)
  end

end
