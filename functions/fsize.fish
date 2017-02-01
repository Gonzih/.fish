function fsize
	printf '\e]710;%s%d\007' "xft:Iosevka Term:style=medium:size=" $argv[1]
	printf '\e]711;%s%d\007' "xft:Iosevka Term:style=bold:size="   $argv[1]
	printf '\e]712;%s%d\007' "xft:Iosevka Term:style=italic:size=" $argv[1]
	printf '\e]713;%s%d\007' "xft:Iosevka Term:style=medium:size=" $argv[1]
	echo "To permanently adjust size run:"
	echo "echo $argv[1] > $urxvt_font_size_file"
end
