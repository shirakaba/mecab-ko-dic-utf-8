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

### Feature schema

Information about the dictionary format and part-of-speech tags used by mecab-ko-dic is documented in [this Google Spreadsheet](https://docs.google.com/spreadsheet/ccc?key=0ApcJghR6UMXxdEdURGY2YzIwb3dSZ290RFpSaUkzZ0E&usp=sharing), linked to from `mecab-ko-dic`'s [repo readme](https://bitbucket.org/eunjeon/mecab-ko-dic/src/master/README.md).

Note how ko-dic has one less feature column than NAIST JDIC, and has an altogether different set of information (e.g.  doesn't provide the "original form" of the word).

The tags are a slight modification of those specified by 세종 (Sejong), whatever that is. The mappings from Sejong to mecab-ko-dic's tag names are given in tab "태그 v2.0" on the above-linked spreadsheet.

The dictionary format is specified fully (in Korean) in tab "사전 형식 v2.0" of the spreadsheet. Any blank values default to `*`.

| index | role (Korean)  | role (English) | notes |
| ------|------------|-------------------------| - |
| 0     | 품사 태그    | part-of-speech tag      | See "태그 v2.0" tab on spreadsheet  |
| 1     | 의미 부류    | meaning                 | (too few examples for me to be sure) |
| 2     | 종성 유무    | presence or absence | `T` for true; `F` for false; else `*` |
| 3     | 읽기 | reading | usually matches surface, but may differ for foreign words e.g. Chinese character words |
| 4     | 타입     | type | One of: `Inflect` (활용); `Compound` (복합명사); or `Preanalysis` (기분석) |
| 5     | 첫번째 품사     | first part-of-speech | e.g. given a part-of-speech tag of "VV+EM+VX+EP", would return `VV` |
| 6     | 마지막 품사       | last part-of-speech | e.g. given a part-of-speech tag of "VV+EM+VX+EP", would return `EP` |
| 7     | 표현       | expression | "활용, 복합명사, 기분석이 어떻게 구성되는지 알려주는 필드" – Fields that tell how usage, compound nouns, and key analysis are organized |

#### Example feature strings

> mecab-ko-dic은 MeCab을 사용하여, 한국어 형태소 분석을 하기 위한 프로젝트입니다.

```
mecab    SL,*,*,*,*,*,*,*
-    SY,*,*,*,*,*,*,*
ko    SL,*,*,*,*,*,*,*
-    SY,*,*,*,*,*,*,*
dic    SL,*,*,*,*,*,*,*
은    JX,*,T,은,*,*,*,*
MeCab    SL,*,*,*,*,*,*,*
을    JKO,*,T,을,*,*,*,*
사용    NNG,행위,T,사용,*,*,*,*
하    XSV,*,F,하,*,*,*,*
여    EC,*,F,여,*,*,*,*
,    SC,*,*,*,*,*,*,*
한국어    NNG,*,F,한국어,Compound,*,*,한국/NNG/*+어/NNG/*
형태소    NNG,*,F,형태소,Compound,*,*,형태/NNG/*+소/NNG/*
분석    NNG,행위,T,분석,*,*,*,*
을    JKO,*,T,을,*,*,*,*
하    VV,*,F,하,*,*,*,*
기    ETN,*,F,기,*,*,*,*
위한    VV+ETM,*,T,위한,Inflect,VV,ETM,위하/VV/*+ᆫ/ETM/*
프로젝트    NNG,*,F,프로젝트,*,*,*,*
입니다    VCP+EF,*,F,입니다,Inflect,VCP,EF,이/VCP/*+ᄇ니다/EF/*
.    SF,*,*,*,*,*,*,*
EOS
```


## License

`mecab-ko-dic-utf-8` is available only under the Apache 2.0 licence: `mecab-ko-dic-utf-8/bundleContents/COPYING`.

## See also

* https://github.com/shirakaba/mecab-ko
* https://github.com/shirakaba/mecab-naist-jdic-utf-8
* https://github.com/shirakaba/iPhone-libmecab