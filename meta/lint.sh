#!/usr/bin/env bash
find . \
        -name '*.sh' \
    -or -name 'pm-helper' \
    -or -name 'pm-install' \
        -print0 \
        | xargs -0 shellcheck -x -s bash -e SC2164
# -x allows sourcing files that are not linted
# SC2164 requires "|| exit" after "cd", but pm-helper takes care of that
