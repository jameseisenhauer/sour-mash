#!/bin/sh

#  AWSDeviceFarmBuild.sh
#
#
#  Created by James Eisenhauer on 8/13/16.
#

# ran into issue with rvm had to use
# rvm use system
echo "Building for AWS Device Farm"

echo "Archiving app..."
# Archive the application
xcodebuild \
-scheme sour-mash \
-sdk iphoneos9.3 \
-archivePath aws/sour-mash.xcarchive \
-configuration Debug \
archive | xcpretty

echo "Exporting app..."
# Export the archive to an ipa
xcodebuild \
-exportArchive \
-archivePath aws/sour-mash.xcarchive \
-exportOptionsPlist ExportOptions.plist \
-exportPath aws | xcpretty

echo "Build for Testing..."
# Need to set scheme to build test targets as well as app on run
xcodebuild \
-scheme sour-mash \
-sdk iphoneos9.3 \
-destination 'generic/platform=iOS' \
-configuration Debug \
-derivedDataPath aws \
build | xcpretty

echo "Preparing Unit Tests for AWS..."
SCRIPTDIR=$PWD
echo $SCRIPTDIR
cd aws/Build/Products/Debug-iphoneos/sour-mash.app/PlugIns/
zip -r $SCRIPTDIR/aws/sour-mashTests.xctest.zip sour-mashTests.xctest


echo "Preparing UI Tests for AWS...."
cd $SCRIPTDIR/aws/Build/Products/Debug-iphoneos/
mkdir Payload
cp -r sour-mashUITests-Runner.app Payload/sour-mashUITests-Runner.app
zip -r $SCRIPTDIR/aws/Payload.ipa Payload
