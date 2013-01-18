class ApplicationController < ActionController::Base
  append_view_path File.dirname(__FILE__)

  def index
    @suffix = params[:version].present? ? "-#{params[:version]}" : ''
    render :template => 'index'
  end
end
