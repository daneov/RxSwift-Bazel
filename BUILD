# from //PermisionScope/BUILD
package(default_visibility = ["//visibility:public"])

load("@build_bazel_rules_apple//apple:versioning.bzl", "apple_bundle_version")

apple_bundle_version(
    name = "version",
    build_version = "1.0.0",
    short_version_string = "0.0.1",
)

load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")

ios_application(
    name = "ios-app",
    bundle_id = "ios.bazel.daneo",
    families = [
        "iphone",
        "ipad",
    ],
    # frameworks = ["@rx_swift//:RxSwift"],
    infoplists = ["//Test:Info.plist"],
    minimum_os_version = "9.0",
    version = ":version",
    visibility = ["//visibility:public"],
    deps = ["//Test:Sources"],
)
