namespace :test do
  desc "Run XCUITests for Production"
  task :run do
    project_path = "SampleProject_Demo"
    destination = "id=A8E252B5-02AC-4C21-8CCC-38065919BCFF"
    scheme = "SampleProject_DemoTests"

    sh "xcodebuild test -project #{project_path}.xcodeproj -scheme #{scheme} -destination '#{destination}'"
  end
end
