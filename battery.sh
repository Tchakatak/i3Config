


THRESHOLD=85

acpi_path=$(find /sys/class/power_supply/ -name 'BAT*' | head -1)
charge_now=$(cat "$acpi_path/charge_now")
#echo $charge_now
charge_full=$(cat "$acpi_path/charge_full")
#echo $charge_full
charge_status=$(cat "$acpi_path/status")
#echo $charge_status
charge_percent=$(printf '%.0f' $(echo "$charge_now / $charge_full * 100" | bc -l))
#echo $charge_percent
message="Battery running critically low at $charge_percent%!"

if [[ $charge_status == 'Discharging' ]] && [[ $charge_percent -le $THRESHOLD ]]; then
  /usr/bin/notify-send -u critical "Low battery" "$message"

  current_date_time="`date +%Y%m%d%H%M%S`";
  echo "[BATTERY LOG] = $charge_percent% on $current_date_time"
fi

