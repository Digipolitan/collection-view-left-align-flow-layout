DGCollectionViewLeftAlignFlowLayout
=================================

[![Build Status](https://travis-ci.org/Digipolitan/collection-view-left-align-flow-layout.svg?branch=master)](https://travis-ci.org/Digipolitan/collection-view-left-align-flow-layout)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/DGCollectionViewLeftAlignFlowLayout.svg)](https://img.shields.io/cocoapods/v/DGCollectionViewLeftAlignFlowLayout.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/cocoapods/p/DGCollectionViewLeftAlignFlowLayout.svg?style=flat)](http://cocoadocs.org/docsets/DGCollectionViewLeftAlignFlowLayout)
[![Twitter](https://img.shields.io/badge/twitter-@Digipolitan-blue.svg?style=flat)](http://twitter.com/Digipolitan)

The `DGCollectionViewLeftAlignFlowLayout` is a simple layout that align does not try to fulfill the lines but stick elements to the left.

![Original FlowLayout](https://github.com/Digipolitan/collection-view-left-align-flow-layout/blob/develop/Screenshots/flow-layout.png?raw=true "Original")
![Left Aligned](https://github.com/Digipolitan/collection-view-left-align-flow-layout/blob/develop/Screenshots/left-layout.png?raw=true "Left Aligned")



## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Works with iOS 8+, tested on Xcode 8.2

### Installing

To install the `DGCollectionViewLeftAlignFlowLayout` using **cocoapods**

- Add an entry in your Podfile  

```
# Uncomment this line to define a global platform for your project
platform :ios, '8.0'

target 'YourTarget' do
  frameworks
   use_frameworks!

  # Pods for YourTarget
  pod 'DGCollectionViewLeftAlignFlowLayout'
end
```

- Then install the dependency with the `pod install` command.

## Usage

Initialize your behavior

```swift
	self.collectionView.collectionViewLayout = DGCollectionViewLeftAlignFlowLayout()
```

## Built With

[Fastlane](https://fastlane.tools/)
Fastlane is a tool for iOS, Mac, and Android developers to automate tedious tasks like generating screenshots, dealing with provisioning profiles, and releasing your application.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for more details!

This project adheres to the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md).
By participating, you are expected to uphold this code. Please report
unacceptable behavior to [contact@digipolitan.com](mailto:contact@digipolitan.com).

## License

DGCollectionViewLeftAlignFlowLayout is licensed under the [BSD 3-Clause license](LICENSE).
