module ExceptionNotificationJs
  class JsNotifierController < ApplicationController
    def notify
      NotifierMailer.notification(env, params.slice(:message, :file, :line_number)).deliver

      # TODO: Support for multiple notifiers
      # Notifiers.notify(env, params.slice(:message, :file, :line_number))

      head :ok
    end
  end
end
