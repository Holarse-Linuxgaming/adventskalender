class AdventController < ApplicationController
  def index
  end

  def show
    @comment = Comment.new(entry: todays_entry)
  end

  def save
    comment = Comment.new(comment_params)
    todays_entry.comments << comment
    todays_entry.save!
  end

  def games
    
  end
  
  private

  def comment_params
    params.permit(:name, :email)
  end
end
