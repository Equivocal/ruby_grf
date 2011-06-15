class PagesController < ApplicationController
  def news
      @newsposts = Newspost.all(:order => "created_at DESC")
  end

  def contact
  end

  def about
  end

end
