# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bundler'

Bundler.setup
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'UPCScanner'
  app.identifier = 'set-yours-to-run-on-device'

  app.pods do
    pod 'ZBarSDK'
  end

  app.development do
    app.entitlements['get-task-allow'] = true
    app.codesign_certificate = "" # The name of your certificate in the keychain
    app.provisioning_profile = "" # The location of your development .mobileprovision file
  end

end
