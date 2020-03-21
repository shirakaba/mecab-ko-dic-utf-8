require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|

  # "mecab-ko-dic-utf-8" triggers npm's spam detection, so we can't share exact names with package.json
  s.name         = "mecab-ko-dic-utf-8"
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage     = "https://github.com/shirakaba/mecab-ko-dic-utf-8"
  s.license      = { :type => "Apache", :file => "bundleContents/COPYING" }
  s.author       = package['author']
  s.platforms    = { :ios => "10.0", :osx => "10.11" }
  s.source       = { :git => "https://github.com/shirakaba/mecab-ko-dic-utf-8.git", :tag => "v#{s.version}" }
  # TODO: Decide a good way to optionally include the model file (model.bin)
  s.resource_bundle = { "mecab-ko-dic-utf-8" => "bundleContents/*" }
  s.info_plist = {
    'mecab-ko-dic authors' => 'Yongwoon Lee (bibreen@gmail.com); Yungho Yu (mousegood@gmail.com)',
    'mecab-ko-dic repo' => 'https://bitbucket.org/eunjeon/mecab-ko-dic',
    'mecab-ko-dic version' => '2.1.1'
  }

end
