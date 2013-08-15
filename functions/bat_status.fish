function bat_status
	set -l now (cat /sys/class/power_supply/BAT0/energy_now)
	set -l max (cat /sys/class/power_supply/BAT0/energy_full)
	echo (math "($now*100)/$max")
end
