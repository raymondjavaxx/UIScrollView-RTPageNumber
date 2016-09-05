Pod::Spec.new do |s|
  s.name         = 'UIScrollView+RTPageNumber'
  s.version      = '1.0.0'
  s.authors      = {'Ramon Torres' => 'raymondjavaxx@gmail.com'}
  s.homepage     = 'https://github.com/raymondjavaxx/UIScrollView-RTPageNumber'
  s.summary      = 'Category for calculating and setting current page number on paging-enabled UIScrollViews.'
  s.source       = {:git => 'https://github.com/raymondjavaxx/UIScrollView-RTPageNumber.git', :tag => '1.0.0'}
  s.license      = {:type => 'MIT', :file => 'LICENSE'}
  s.platform     = :ios, '6.0'
  s.source_files = 'Classes/UIScrollView+RTPageNumber.{m,h}'
end