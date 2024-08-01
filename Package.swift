// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "BasicBottomSheet",
  platforms: [.iOS(.v11)],
  products: [
    .library(
      name: "BasicBottomSheet",
      targets: ["BasicBottomSheet"]
    ),
  ],
  targets: [
    .target(
      name: "BasicBottomSheet"
    ),
    .testTarget(
      name: "BasicBottomSheetTests",
      dependencies: ["BasicBottomSheet"]
    ),
  ]
)
