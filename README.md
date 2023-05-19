# PushTransition
It is simple transition framework using protocol that you can inherit in views, view controllers or navigation controllers.
So you can choose to inherit this protocol Globally or just use in specific view, view  controllers or navigation controllers.
You can use pushViewController and popViewController and transition works for both. You must specify your transition
in every single push or pop call. Be aware that this functions need to navigation controller.
You have access to this methods even in views and view controllers directly.

[![Language: Swift 5](https://img.shields.io/badge/language-swift%205-f48041.svg?style=flat)](https://developer.apple.com/swift)
[![Version](https://img.shields.io/cocoapods/v/PushTransition.svg?style=flat)](http://cocoapods.org/pods/PushTransition)
[![License: MIT](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](https://github.com/Imanmf/PushTransition/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/PushTransition.svg?style=flat)](https://cocoapods.org/pods/PushTransition)
[![GitHub tag](https://img.shields.io/github/release/Imanmf/PushTransition.svg)]()

[Installation](#installation) - [Usage](#usage)

## Demo
![demo gif](Gif/GIF.gif)

## Installation

#### Using [CocoaPods](http://cocoapods.org/)

First be sure to run `pod repo update` to get the latest version available.

`PushTransition` is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

Add `pod 'PushTransition'` to your `Podfile` and run `pod install`.

```ruby
target 'MyApp'
pod 'PushTransition'
```

## Important
Before using `PushTransition`, pay attention to the following points:
- `PushTransition` works with navigation controller, So you need navigation controller.
- You need to inherit from `PushTransition` as Usage section Instructions below.
- As mentioned earlier, you may need ```pod repo update``` or ```pod install --repo-update``` to install.

## Usage

First things first `import PushTransition`.

###UIViewControllers
You can use this protocol globally or just for some specific view controllers.
####Globally
You can use extension in UIViewController:
```swift
extension UIViewController: PushTransition {}
```
Now you can access to pushViewController and popViewController directly in view controllers
```swift
let vc = SecondViewController()
pushViewController(vc, type: .fade)
//self.pushViewController(vc, type: .fade) // if you are in closure

popViewController(type: .fade)
//self.popViewController(type: .fade) // if you are in closure

```
#####or using a baseViewController
```swift
class BaseViewController: UIViewController, PushTransition {}

class FirstViewController: BaseViewController {}
```
So when you inherit BaseViewController in your final view controllers, you have access to pushViewController and popViewController

####Specific view controller
```swift
class YourViewController: UIViewController, PushTransition {}
```
You have access `PushTransition` functions just in this view controller.

###UINavigationControllers
You can use `PushTransition` globally or just for some specific navigation controllers
```swift
extension UINavigationController: PushTransition {}

self.navigationController?.pushViewController(vc, type: .flip) // in view controllers
//pushViewController(vc, type: .flip) // in navigation controller classess
```

###UIView
You can use `PushTransition` in your views, and you can do push or pop directly from a view.
It's not important that you added your view programmatically or using UI. You just need inherit from `PushTransition`.
So, don't worry about where are you and what are you doing. When your work finished in UIView codes, You can push or pop even in views, and you don't need the view controller. `PushTransition` will find parent and do push or pop.

```swift
class YourView: UIView, PushTransition {
    /*
    It will find your view controller and navigation controller
    and do push or pop for you. 
    */
    func workFinished() {
        popViewController(type: .fade)
    }
}

class ViewController: UIViewController { // you dont need to use PushTransition in ViewController

    let newView = YourView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newView.backGroundColor = .white
        newView.frame = self.view.frame
        view.addSubView(newView)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(back))
        newView.addGestureRecognizer(tapGesture)
    }
    
    @objc private func back() {
        newView.pushViewController(vc, type: .fade)
        //newView.popViewController(type: .fade)
    }
}
```

## Run Example

To run the example project, clone the repo, and run the `Example` Scheme

## Author

<a href="https://github.com/Imanmf">
  <img alt="avatar" style="border-radius: 50%" src="https://avatars.githubusercontent.com/u/15712112?s=400&u=04b439452c2fae517bd6b6febb970b067ffcae04&v=4" width="70px">
</a>

Iman Mosayebi, iman.mosayyebi@gmail.com


## Requirements
    * Swift: 5.0, 5.1, 5.2, 5.3

    * iOS: 11.0

## License

`PushTransition` is available under the MIT license.  
See the [LICENSE](LICENSE) file for more details info.
