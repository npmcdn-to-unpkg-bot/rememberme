class TextsController < ApplicationController
   def new
      @text = Text.new
   end
end
