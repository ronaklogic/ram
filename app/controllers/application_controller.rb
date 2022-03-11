class ApplicationController < ActionController::Base
  before_action :authenticate_book!
end
