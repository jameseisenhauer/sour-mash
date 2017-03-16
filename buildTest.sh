#!/bin/sh

#
#
#  Created by James Eisenhauer on 8/13/16.
#

echo "Testing..."

xcodebuild \
-workspace sour-mash.xcworkspace \
-scheme sour-mash \
-destination 'platform=iOS Simulator,name=iPhone 7 Plus,OS=10.2' \
-derivedDataPath hack \
clean build-for-testing



./bluepill  \
-a ./hack/Build/Products/Debug-iphonesimulator/sour-mash.app  \
-u ./hack/Build/Products/Debug-iphonesimulator/sour-mashUITests-Runner.app  \
-s ./sour-mash/sour-mash.xcodeproj/xcshareddata/xcschemes/sour-mash.xcscheme \
-d "iPhone 7 Plus"  \
-r "iOS 10.2"  \
-R 3  \
-o ./output \
-f 2 \
-F true \
-n 3
