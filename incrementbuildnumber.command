dirname=`dirname "$0"`
cd $dirname
buildNumber=`/usr/libexec/PlistBuddy -c "Print CFBundleVersion" ./Complicated/info.plist`
buildNumber=$(($buildNumber + 1))

echo -n "Increment Build Number to $buildNumber (y/n)? "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo Yes
    /usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "./Complicated/info.plist"
	/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "./Complicated macOS/info.plist"
	/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "./Complicated WatchKit App/info.plist"
	/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "./Complicated WatchKit Extension/info.plist"
else
    echo No
fi

