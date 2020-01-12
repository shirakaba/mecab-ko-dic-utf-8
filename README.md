# mecab-ko-dic-utf-8
mecab-ko-dic (a Korean dictionary for use with Mecab), in UTF-8 format, organised as a Cocoapod and npm package for usage with iOS/macOS.

## Installation

### Installing from Cocoapods

Specify this pod in your `Podfile`:

```ruby
pod 'mecab-ko-dic-utf-8'
```

```sh
pod update
```

### Installing as a Cocoapod from `npm` (for React Native iOS apps)

Add this npm package:

```sh
yarn add mecab-ko-dic-utf-8

# or:

npm install --save mecab-ko-dic-utf-8
```

Next, specify this pod in your `Podfile`:

```ruby
pod 'mecab-ko-dic-utf-8', :podspec => '../node_modules/mecab-ko-dic-utf-8/mecab-ko-dic-utf-8.podspec'
```

Don't forget to install the pods.

```sh
cd ios
pod update
```

## License

`mecab-ko-dic-utf-8` is available only under the Apache 2.0 licence: `mecab-ko-dic-utf-8/bundleContents/COPYING`.

## See also

* https://github.com/shirakaba/mecab-ko
* https://github.com/shirakaba/mecab-naist-jdic-utf-8
* https://github.com/shirakaba/iPhone-libmecab