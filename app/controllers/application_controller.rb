class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def todays_entry
    Rails.cache.fetch "entry-#{DateTime.now.day}", expires_in: 1.day do
      Entry.where(day: DateTime.now.day).first
    end
  end

  helper_method :todays_entry

end
