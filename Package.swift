// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FileSystemStats",
  products: [
    .library(
      name: "FileSystemStats",
      targets: ["FileSystemStats"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "FileSystemStats",
      dependencies: []),
    .testTarget(
      name: "FileSystemStatsTests",
      dependencies: ["FileSystemStats"]),
  ]
)
