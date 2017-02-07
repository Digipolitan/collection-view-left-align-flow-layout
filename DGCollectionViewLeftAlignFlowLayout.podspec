Pod::Spec.new do |s|
s.name = "DGCollectionViewLeftAlignFlowLayout"
s.version = "1.0.1"
s.summary = "The DGCollectionViewLeftAlignFlowLayout is a simple layout that align does not try to fulfill the lines but stick elements to the left."
s.homepage = "https://github.com/Digipolitan/collection-view-left-align-flow-layout-swift"
s.authors = "Digipolitan"
s.source = { :git => "https://github.com/Digipolitan/collection-view-left-align-flow-layout-swift.git", :tag => "v#{s.version}" }
s.license = { :type => "BSD", :file => "LICENSE" }
s.source_files = 'Sources/**/*.{swift,h}'
s.ios.deployment_target = '8.0'
s.tvos.deployment_target = '9.0'
s.requires_arc = true
end


