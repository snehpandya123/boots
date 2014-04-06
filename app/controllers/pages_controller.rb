class PagesController < ApplicationController
  def home
    @search = Search.new

  end

  def help
      @hello = 'hello'
  end

  def contact
  end

  def about
  end

  def developer
  end
end
