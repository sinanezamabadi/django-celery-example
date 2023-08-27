#!/bin/bash

NEW_IMAGE_TAG=$COMMIT_SHA

# List all existing images (filter based on your image repository and naming)
EXISTING_IMAGES=$(docker images | grep "your_image_repo" | awk '{print $1":"$2}')

# Loop through existing images
for IMAGE in $EXISTING_IMAGES; do
    # Skip the new image tag
    if [[ $IMAGE != *"$NEW_IMAGE_TAG" ]]; then
        # Remove the old image
        docker rmi $IMAGE
    fi
done
