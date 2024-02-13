//  swift-tools-version:5.4
//
//  Package.swift
//  Presentr
//
//  Created by Daffa Yagrariksa on 13/02/24.
//  Copyright © 2024 danielozano. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "Presentr",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Presentr",
            targets: ["Presentr"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        .target(
            name: "Presentr",
            path: "Presentr",
            exclude: [
                "AlertViewController.xib",
                "Info.plist",
                "Montserrat-Regular.ttf",
                "Presentr.h",
                "SourceSansPro-Regular.ttf"
            ],
            resources: [
                .copy("AlertViewController.xib"),
                .copy("Montserrat-Regular.ttf"),
                .copy("SourceSansPro-Regular.ttf")
            ],
            publicHeadersPath: "."
        )
    ]
)

