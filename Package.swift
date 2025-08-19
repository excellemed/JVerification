// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JVerificationSDK",
    products: [.library(name: "JVerificationSDK", targets: ["JVerificationSDK"])],
    targets: [
        .binaryTarget(
            name: "JVerification",
            url: "https://github.com/excellemed/JPush/releases/download/jpush-5.7.0-jcore-5.1.0/jpush-ios-5.7.0.xcframework.zip",
            checksum: "96666f6c61ffce0e5bfb8f2cb45e2d6706a606becc9fa3f22c10dced30e576f9",
        ),
        .binaryTarget(
            name: "JCore",
            url: "https://github.com/excellemed/JPush/releases/download/jpush-5.7.0-jcore-5.1.0/jcore-ios-5.1.0.xcframework.zip",
            checksum: "9374d07939bb2b8d3ec911318f1b1cb7cd099069482ff9850ef4224458da9fc1",
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
