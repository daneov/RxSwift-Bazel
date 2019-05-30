# from //RxSwift/BUILD
load("@build_bazel_rules_apple//apple:versioning.bzl", "apple_bundle_version")

apple_bundle_version(
    name = "version",
    build_version = "1.0.0",
    short_version_string = "4.4.2",
)

# RxAtomic
objc_library(
    name = "rx_atomic_lib",
    srcs = ["RxAtomic/RxAtomic.c"],
    hdrs = ["RxAtomic/include/RxAtomic.h"],
    enable_modules = True,
    module_name = "RxAtomic",
)

load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework")

ios_framework(
    name = "RxAtomic",
    bundle_id = "io.rx.RxAtomic",
    bundle_name = "RxAtomic",
    families = [
        "ipad",
        "iphone",
    ],
    infoplists = ["RxAtomic/Info.plist"],
    minimum_os_version = "8.0",
    version = ":version",
    deps = [":rx_atomic_lib"],
    visibility = ["//visibility:public"],
)

# RxSwift
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "rx_swift_lib",
    srcs = glob(
        [
            "RxSwift/**/*.swift",
            "Platform/**/*.swift",
        ],
        exclude = ["RxSwift/Platform/**/*.swift"],
    ),
    module_name = "RxSwift",
    deps = [":rx_atomic_lib"],
    # alwayslink = True,
    visibility = ["//visibility:public"],
)

ios_framework(
    name = "RxSwift",
    bundle_id = "io.rx.RxSwift",
    bundle_name = "RxSwift",
    families = [
        "ipad",
        "iphone",
    ],
    infoplists = [":RxSwift/Info.plist"],
    minimum_os_version = "8.0",
    version = ":version",
    visibility = ["//visibility:public"],
    deps = [":rx_swift_lib", ":rx_atomic_lib"],
)

# RxCocoa
objc_library(
    name = "rx_cocoa_objc",
    srcs = glob(["RxCocoa/**/*.m"]),
    hdrs = glob(["RxCocoa/**/*.h"]),
    enable_modules = True,
    module_name = "RxCocoa",
)

swift_library(
    name = "rx_cocoa_lib",
    srcs = glob(
        [
            "RxCocoa/**/*.swift",
            "Platform/**/*.swift",
        ],
        exclude = [
            "RxCocoa/Platform/**/*.swift",
            "Platform/AtomicInt.swift",
        ],
    ),
    module_name = "RxCocoa",
    deps = [
        ":rx_atomic_lib",
        ":rx_cocoa_objc",
        ":rx_swift_lib",
    ],
)

ios_framework(
    name = "RxCocoa",
    bundle_id = "io.rx.RxCocoa",
    bundle_name = "RxCocoa",
    families = [
        "ipad",
        "iphone",
    ],
    infoplists = [":RxCocoa/Info.plist"],
    minimum_os_version = "8.0",
    version = ":version",
    visibility = ["//visibility:public"],
    deps = [":rx_swift_lib"],
)
