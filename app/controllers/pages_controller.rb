class PagesController < ApplicationController

  def home
    puts "wassup"
  end


  def about
  end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]

    search = params[:member]

    if search
        @members = @members.select do |m|
        puts m
        m.start_with? search.downcase
      end
    end
  end

end
