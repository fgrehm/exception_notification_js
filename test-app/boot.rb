$:.unshift Dir.pwd

require 'bundler'
Bundler.setup :default

require "tiny-rails"
require "rails"

require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require :default

class TinyRailsApp < Rails::Application
  config.consider_all_requests_local = true

  config.active_support.deprecation = :log

  config.autoload_paths << config.root

  config.middleware.delete "Rack::Lock"
  config.middleware.delete "ActionDispatch::Flash"
  config.middleware.delete "ActionDispatch::BestStandardsSupport"
  config.middleware.use Rails::Rack::LogTailer, "log/#{Rails.env}.log"

  config.action_mailer.delivery_method = :letter_opener_web

  # Enable asset pipeline
  config.assets.enabled = true
  config.assets.debug   = true
  config.assets.paths << File.dirname(__FILE__)

  # We need a secret token for session, cookies, etc.
  config.secret_token = "49837489qkuweoiuoqwehisuakshdjksadhaisdy78o34y138974xyqp9rmye8yrpiokeuioqwzyoiuxftoyqiuxrhm3iou1hrzmjk"
end

TinyRailsApp.initialize!

require 'initializers' if File.exists?('initializers.rb')

TinyRailsApp.routes.draw do
  get   "/" => "application#index"
  match "/favicon.ico", :to => proc {|env| [200, {}, [""]] }

  mount ExceptionNotificationJs::Engine, at: "/_js_errors"
  mount LetterOpenerWeb::Engine,         at: "/letter_opener"
end
