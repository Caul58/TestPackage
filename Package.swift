// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import class Foundation.ProcessInfo

let package = Package(
    name: "TestLibrary",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TestLibrary",
            targets: ["TestLibrary"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TestLibrary",
            dependencies: []),
        .testTarget(
            name: "TestLibraryTests",
            dependencies: ["TestLibrary"]),
    ]
)

if ProcessInfo.processInfo.environment["MELOINVENTO"] != nil {
    package.dependencies.append(
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.6.4"))
    )
}
