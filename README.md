# Subscription — Debug APK Scaffold

This repository is a **minimal Flutter scaffold** for the Subscription (catering payments) app.
It is configured so that **GitHub Actions** can run a *debug APK* build automatically (Option A you selected).

## What this archive contains
- Minimal Flutter app (lib/main.dart) using Riverpod.
- `pubspec.yaml` with the main dependencies listed.
- GitHub Actions workflow that runs `flutter create .` (to generate platform folders) and builds a debug APK artifact.
- Sample data and a server webhook example (placeholders).

## Quick instructions — get a debug APK via GitHub Actions (fastest)
1. Create a new GitHub repository (private or public).
2. Push the contents of this folder to the repo root.
   ```bash
   git init
   git add .
   git commit -m "Initial Subscription debug scaffold"
   git branch -M main
   git remote add origin https://github.com/<your-username>/<your-repo>.git
   git push -u origin main
   ```
3. Go to the **Actions** tab of the GitHub repo. The workflow `android-debug.yml` will run automatically on push.
4. After the workflow completes, open the workflow run and download the `app-debug.apk` artifact from the "Artifacts" section.
5. Install `app-debug.apk` on your Android device (enable installs from unknown sources if needed).

> Note: The debug APK is suitable for immediate testing. It is *unsigned* for Play Store distribution.
> To create a release-signed APK, use the release workflow (requires keystore secrets) — I can provide that later.

## Placeholders you should replace later
- `google-services.json` (Firebase) — place into `android/app/` if you add it locally.
- Razorpay keys — to be added in app config and server webhook when you integrate payments.

If you want, I can now push this repo to a GitHub repo for you (I will provide all steps) or walk you through pushing and getting the debug APK. I can also extend the scaffold to the full-featured project next.
