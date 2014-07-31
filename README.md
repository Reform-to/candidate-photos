# Candidate Photos

Photos of Congressional Candidates that we have collected with permission,
resized and converted to grayscale. Available in three sizes.

# Development

## Requirements

* ImageMagick

## Instructions

Place a candidate image in `candidates/original` with named like `CANDIDATE_ID.jpg` using the candidae's individual FEC ID. You can crop the photo to make it a well-framed head shot.

Run the script:

    ./scripts/resize-photos.sh

The script won't overwrite any existing images. If you want a clean start, first
run the command `rm -Rf img/*` followed by `./scripts/resize-photos.sh`.

Update `js/candidates.js` with a correct JSON representation of the FEC ID, district, state, full name, and the path to the 100x125 size avatar.
