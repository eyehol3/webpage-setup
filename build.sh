#!/usr/bin/env sh
cd "$SOURCE_DIR" || exit

docker run --rm \
  --volumes-from=main \
  jekyll/builder:"$JEKYLL_VERSION" \
  jekyll build -s /source -d /serve
