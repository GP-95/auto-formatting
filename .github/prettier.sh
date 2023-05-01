CHANGED_FILES=$(git diff --name-only origin/main | xargs -n1 | grep -E '\.ts$')
if [ "$CHANGED_FILES" ]; then
    # npm run format:check $FILES_TO_CHECK
    echo "Found changes in .ts files - checking formatting"
    npm run format:check $CHANGED_FILES
else
    echo "No changes found in .ts files"
    exit 0
fi
