#!/usr/bin/env sh

docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  jekyll/builder:"$JEKYLL_VERSION" \
  jekyll build -s "$SOURCE_DIR" -d "$SERVE_DIR"
