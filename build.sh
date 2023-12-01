#!/usr/bin/env bash

CGO_ENABLED="1" GOOS="darwin" GOARCH="amd64" CC="zig cc -target x86_64-macos-none -g0" CXX="zig c++ -target x86_64-macos-none -g0" go build -trimpath -tags="fts5 netgo osusergo" -buildmode="pie" -ldflags="-s -w"
