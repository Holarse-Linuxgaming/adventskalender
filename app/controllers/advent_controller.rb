class AdventController < ApplicationController
  def index
    @entry = Entry.first #.where(day: DateTime.now.day)
  end

  def show
  end
end
