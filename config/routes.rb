ExceptionNotificationJs::Engine.routes.draw do
  post '/' => 'js_notifier#notify'
end
