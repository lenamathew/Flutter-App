# Flutter Menu Toast

This is a minimal Flutter app that shows two menu items — `Menu 1` and `Menu 2` — in the app bar. Clicking either item displays a toast message: `Menu 1 Clicked` or `Menu 2 Clicked`.

Files added:

- `lib/main.dart` — main application UI and menu handling using `fluttertoast`.
- `pubspec.yaml` — declares `fluttertoast` dependency.
- `.gitignore` — typical Flutter ignores.
- `.github/workflows/flutter.yml` — GitHub Actions workflow to build an APK.

How to use

1. If you don't already have the platform folders in the repo (for example `android/`), the GitHub Actions workflow will run `flutter create .` to generate them before building.
2. Push this repository to GitHub on `main` or `master` branch. The workflow runs on push and pull_request.
3. After the workflow completes, the APK artifact will be available from the workflow run as `app-release-apk`.

Local testing

- Make sure you have Flutter installed locally.
- From project root run:

```powershell
flutter pub get
flutter run
```

To build an APK locally:

```powershell
flutter build apk --release
```

Download APK from GitHub Actions

- Push to GitHub and navigate to the repository on github.com.
- Click the "Actions" tab, then open the latest run of the "Build Flutter APK" workflow.
- In the workflow run page, open the "Artifacts" section and download the `app-release-apk` artifact. Unzip it to get `app-release.apk`.

Running tests

- To run the included widget test locally:

```powershell
flutter test
```

This project includes a minimal widget test at `test/widget_test.dart` which verifies the app bar title and the body text render.

Release uploads

- The workflow now creates a GitHub Release for each run and uploads the APK as a release asset named `app-release.apk`.
- To download the APK from a release: go to the repository on github.com → "Releases" (left sidebar) → open the release matching the run and download `app-release.apk`.

