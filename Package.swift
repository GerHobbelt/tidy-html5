// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RDHtml5Tidy",
    products: [
        .library(name: "RDHtml5Tidy", type: .static, targets: ["RDHtml5Tidy"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "RDHtml5Tidy",
            path: ".",
            sources: ["src"],
            publicHeadersPath: "spm-include",
            cSettings: [
                .headerSearchPath("spm-include/tidy"),
            ]
        )
    ]
)
