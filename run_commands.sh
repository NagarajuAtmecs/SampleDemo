#!/bin/bash

# Set the script to exit immediately on any error
set -e

echo "Running Bazel Build..."
# Run the Bazel command (adjust the target as necessary)
bazel build //:iOSApp

rake test:run

