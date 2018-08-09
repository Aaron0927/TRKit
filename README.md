# TRKit

[![CI Status](https://img.shields.io/travis/xiaoerlong/TRKit.svg?style=flat)](https://travis-ci.org/xiaoerlong/TRKit)
[![Version](https://img.shields.io/cocoapods/v/TRKit.svg?style=flat)](https://cocoapods.org/pods/TRKit)
[![License](https://img.shields.io/cocoapods/l/TRKit.svg?style=flat)](https://cocoapods.org/pods/TRKit)
[![Platform](https://img.shields.io/cocoapods/p/TRKit.svg?style=flat)](https://cocoapods.org/pods/TRKit)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TRKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TRKit'
```

自己封装的项目中的常用组件，待持续完善。。。

### 分类
#### UIScrollView+TRRefresh
基于MJRefresh的二次封装
指定对应的target和action就可以给scrollView添加刷新方法，后续添加更多的自定方法，方便调用
```
/// 设置默认的下拉刷新
- (void)setNormalHeaderWithTarget:(id)target action:(SEL)action lastUpdateTimeKey:(nullable NSString *)lastUpdateTimeKey;
```

```
/// 设置默认的上拉刷新
- (void)setNormalFooterWithTarget:(id)target action:(SEL)action;
```

## Author

xiaoerlong, 1005129276@qq.com

## License

TRKit is available under the MIT license. See the LICENSE file for more info.
