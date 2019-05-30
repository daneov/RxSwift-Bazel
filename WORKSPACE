load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
git_repository(
    name = "build_bazel_rules_apple",
    remote = "https://github.com/bazelbuild/rules_apple.git",
    commit = "7638dd7709148441d8618fa2020430bceab37687",
    shallow_since = "1557423961 -0700"
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)
apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)
swift_rules_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)
apple_support_dependencies()

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
    name = "rx_swift",
    urls = ["https://github.com/ReactiveX/RxSwift/archive/4.4.2.zip"],
    sha256 = "b12b178baead3f72a8807bbb6ecb4fd0e006639339af27c5522893161fe1b930",
    build_file = "@//:dependencies/RxSwift.BUILD",
    strip_prefix = "RxSwift-4.4.2"
)