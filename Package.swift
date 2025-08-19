// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JVerificationSDK",
    products: [.library(name: "JVerificationSDK", targets: ["JVerificationSDK"])],
    targets: [
        .binaryTarget(
            name: "JCore",
            url: "https://github.com/excellemed/JPush/releases/download/jpush-5.7.0-jcore-5.1.0/jcore-ios-5.1.0.xcframework.zip",
            checksum: "9374d07939bb2b8d3ec911318f1b1cb7cd099069482ff9850ef4224458da9fc1",
        ),
        .binaryTarget(
            name: "JVerification",
            url: "https://github.com/excellemed/JVerification/releases/download/JVerification-3.4.2/jverification-ios-3.4.2.xcframework.zip",
            checksum: "53be98191212766be36728bacbf2ef542479e0c6af3c80756e3364a31f92c0a8",
        ),
        .binaryTarget(
            name: "OAuth",
            url: "https://github.com/excellemed/JVerification/releases/download/JVerification-3.4.2/OAuth.xcframework.zip",
            checksum: "d7c1a9bb103d02aba3d3ae6a2b842afac908b7cc28bebe4605ab14a74e767489",
        ),
        .binaryTarget(
            name: "TYRZUISDK",
            url: "https://github.com/excellemed/JVerification/releases/download/JVerification-3.4.2/TYRZUISDK.xcframework.zip",
            checksum: "06cd1c057557111c1032f89df40543d5b58439def65b33901c64766cea8f0a20",
        ),
        .binaryTarget(
            name: "EAccountApiSDK",
            url: "https://github.com/excellemed/JVerification/releases/download/JVerification-3.4.2/EAccountApiSDK.xcframework.zip",
            checksum: "aa4cb5d262f12032e012ccc97c5290734fe825191df4853e28e54e1cdb6bac36",
        ),
        .target(
            name: "JVerificationSDK",
            dependencies: [
                "JVerification",
                "JCore",
                "EAccountApiSDK",
                "OAuth",
                "TYRZUISDK",
            ],
            path: "Sources/JVerificationSDK",
            sources: ["."],
            linkerSettings: [
                .linkedFramework("CoreGraphics"),
                .linkedFramework("Foundation"),
                .linkedFramework("UIKit"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
                .linkedFramework("Security"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("WebKit"),
                .linkedLibrary("z"),
                .linkedLibrary("resolv"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("c++.1"),
                .unsafeFlags(["-ObjC"], .when(platforms: [.iOS])),
            ]
        ),
    ]
)
