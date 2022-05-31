# Twitter Feed

## Build apps

### React Native

```
cd apps/react-native
cd android
./gradlew assembleRelease
adb install app/build/outputs/apk/release/app-release.apk
```

### Native

```
cd apps/android
./gradlew assembleRelease
adb install app/build/outputs/apk/release/app-release.apk
```

### Flutter

```
cd apps/flutter
flutter build apk
adb install build/app/outputs/flutter-apk/app-release.apk
```

## Regenerate feed

Get a `token` from [a Twitter project](https://developer.twitter.com/en/portal/projects-and-apps)

```

export BEARER_TOKEN=...
cd feed-builder
yarn
yarn ts-node .

cd ..
cp feed.json apps/flutter/data/feed.json
cp feed.json apps/android/app/src/main/assets/feed.json
cp feed.json apps/react-native/feed.json

```

```

```
