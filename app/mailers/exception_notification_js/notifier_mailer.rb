require 'pp'

module ExceptionNotificationJs
  class NotifierMailer < ActionMailer::Base
    def notification(env, error_info)
      @error    = OpenStruct.new(error_info)
      @request  = ActionDispatch::Request.new(env)
      # TODO: Add stacktrace information using  http://stacktracejs.com/
      @sections = %w( request session environment )
      mail
    end
  end
end
