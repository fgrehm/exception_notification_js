# ExceptionNotificationJS

Get notified about JS errors on Rails apps

# Warning

This software is in alpha development stage, please keep that in mind before
using in production environments and expect things to break.

## Installation

Add this line to your application's Gemfile and run the `bundle` command to
install it.

    gem 'exception_notification_js'

## Usage

To use [promisejs](https://github.com/stackp/promisejs) for submiting AJAX requests
back to the app and do not depend on jQuery, add the folowing to your
`app/assets/application.js`:

```javascript
//= require 'exception_notification'
```

Or if your app uses jQuery:

```javascript
//= require 'exception_notification-jquery'
```

Go to your routest.rb and add:

```ruby
  mount ExceptionNotificationJs::Engine, at: "/_js_errors"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
