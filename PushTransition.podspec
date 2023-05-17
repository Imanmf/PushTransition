Pod::Spec.new do |spec|

  spec.name         = "PushTransition"
  spec.version      = "0.0.1"
  spec.summary      = "A simple framework that help you to transition between view controllers in push method."

  spec.description  = <<-DESC
  It is a protocol that you can use in views, view controllers or navigation controllers.
  So you can choose use this protocol Globally or just use in specific view, view  controllers or navigation controllers.
  You can use pushViewController and popViewController and transition works for both. you must specify your transition
  in every single push or pop call. Be aware that this functions need to navigation controller.
  You have access to this methods even in views and view controllers directly.
                   DESC

  spec.homepage     = "https://github.com/Imanmf/PushTransition"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Mosayebi Iman" => "iman.mosayyebi@gmail.com" }
  # spec.social_media_url   = "https://twitter.com/Mosayebi Iman"

  spec.ios.deployment_target = "11.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"

  spec.source       = { :git => "https://github.com/Imanmf/PushTransition.git", :tag => "#{spec.version}" }

  spec.source_files  = "PushTransition/Source/**/*.swift"
  #spec.exclude_files = "Classes/Exclude"
  spec.swift_versions = ['5.0', '5.1', '5.2', '5.3']

end
