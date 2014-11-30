class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def todays_entry
    Entry.first # .where(day: DateTime.now.day)
  end

  helper_method :todays_entry

end
