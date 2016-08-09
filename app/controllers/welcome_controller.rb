class WelcomeController < ApplicationController

  def index
    @memorials = Memorial.last(5)
  end

end
