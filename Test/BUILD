load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Sources",
    srcs = ["AppDelegate.swift"],
    deps = ["@rx_swift//:rx_swift_lib"],
    visibility = ["//visibility:public"]
)

exports_files(["Info.plist"])