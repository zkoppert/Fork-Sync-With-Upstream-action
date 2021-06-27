#!/bin/sh

# push to origin target_branch
push_new_commits() {
    echo 'Pushing new commits to target branch...' 1>&1
    (git push ${INPUT_GIT_PUSH_ARGS} origin "${INPUT_TARGET_BRANCH}" &&
        echo 'Push successful' 1>&1) ||
        # TODO: handle better
        echo 'Push fail'
}
