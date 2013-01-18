module ExceptionNotificationJs
  class JsNotifierController < ApplicationController
    def notify
      head :ok
    end
  end
end
