#!/bin/bash

# Stop on first failure
set -e

# Print every line as it is executed
set -x

# Restore .NET Packages
dotnet restore demo/CalendarApp/CalendarApp.sln --verbosity=normal

# Install .NET Dev Certificates
dotnet dev-certs https
