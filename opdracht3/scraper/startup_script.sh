CONTAINER_ALREADY_STARTED="/tracker/CONTAINER_ALREADY_STARTED_PLACEHOLDER"
if [ ! -e $CONTAINER_ALREADY_STARTED ]; then
    touch $CONTAINER_ALREADY_STARTED
    echo "-- First container startup --"
    python3 app.py
else
    echo "-- Not first container startup --"
fi