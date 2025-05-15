#!/bin/sh

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.

#!/bin/sh

source "$CONFIG_DIR/colors.sh"

if [ "$SENDER" = "volume_change" ]; then
  VOLUME="$INFO"

  case "$VOLUME" in
    [6-9][0-9]|100) ICON="󰕾"; COLOR=$GREEN ;;
    [3-5][0-9]) ICON="󰖀"; COLOR=$YELLOW ;;
    [1-9]|[1-2][0-9]) ICON="󰕿"; COLOR=$PEACH ;;
    *) ICON="󰖁"; COLOR=$RED ;;
  esac

  sketchybar --set "$NAME" icon="$ICON" icon.color=$COLOR label="$VOLUME%"
fi