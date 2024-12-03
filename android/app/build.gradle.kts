plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.afyaexpress"
    compileSdk = 34 // Set to the latest version supported by Flutter
    ndkVersion = "27.0.12077973" // Optional; remove if not using NDK features

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }

    kotlinOptions {
        jvmTarget = "1.8"
    }

    defaultConfig {
        applicationId = "com.example.afyaexpress"
        minSdk = 23 // <-- Updated to meet modern library requirements
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }

    buildTypes {
        release {
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
            signingConfig = signingConfigs.getByName("debug") // Use a release keystore for production
        }
    }
}

flutter {
    source = "../.." // Points to the Flutter module
}
