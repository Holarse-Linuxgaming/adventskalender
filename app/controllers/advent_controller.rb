class AdventController < ApplicationController
  def index
  end

  def show
    @comment = Comment.new(entry: todays_entry)
  end

  def save
    Rails.logger.debug(params)
  end
end
