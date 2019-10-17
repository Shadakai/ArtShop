# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

def shared_pods
    pod'Firebase/Core'
    pod'Firebase/Auth'
    pod'IQKeyboardManagerSwift'
    pod'Firebase/Firestore'
    pod'Firebase/Storage'
    pod'Kingfisher','~> 4.0'
    pod'CodableFirebase'
end

target 'ArtShop' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ArtShop
    shared_pods
    pod'Stripe'
    pod'Alamofire'
end

target 'ArtShop Admin' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ArtShop Admin
    shared_pods
    pod'CropViewController'
end
