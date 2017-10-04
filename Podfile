xcodeproj 'Test_iOS_11.xcodeproj'

require 'cocoapods-timeconsuming'
require 'cocoapods-multithread-installpod'


source 'git@gitlab.alibaba-inc.com:alipods/specs.git'
source 'git@gitlab.alibaba-inc.com:alipods/specs-mirror.git'
source 'git@gitlab.alibaba-inc.com:NebulaSDK/Specs.git'

ali_source 'alibaba-specs'
ali_source 'alibaba-specs-mirror'

inhibit_all_warnings!


target 'Test_iOS_11' do
    platform :ios, '8.0'
    
    pod 'Masonry', '1.0.2'
    
end

begin
    cocoapods_post_install if require './cocoapods-post-install.rb'
    rescue LoadError
end
