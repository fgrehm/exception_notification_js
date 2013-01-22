require_dependency 'exception_notification_js/notifier_mailer'

ExceptionNotificationJs::NotifierMailer.default({
  subject: "[App Name] Exception Notification JS",
  from:    '"notifier" <notifier@example.com>',
  to:      'exceptions@example.com'
})
