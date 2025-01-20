load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "lib",
    srcs = glob(["SampleProject_Demo/Source/*.swift"]),

)

ios_application(
    name = "iOSApp",
    bundle_id = "com.Atmecs.SampleProject-Demo",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = ["SampleProject_Demo/Info.plist"],
    minimum_os_version = "17.0",
    visibility = ["//visibility:public"],
    deps = [":lib"],
    resources = ["SampleProject_Demo/Base.lproj/Main.storyboard"],
)
