# Calculates the ratio of the actual brightness and the max brightness

path=/sys/class/backlight/intel_backlight

MAX=`cat $path/max_brightness`
ACTUAL=`cat $path/actual_brightness`

PERCENTAGE=`echo "scale=2; $ACTUAL / $MAX" | bc -l`

echo $PERCENTAGE
