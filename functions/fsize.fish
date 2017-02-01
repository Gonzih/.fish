function fsize
	echo Use $urxvt_font_size_file to permanently adjust the size
	printf '\e]710;%s%d\007' "xft:Iosevka Term:style=medium:size=" $argv[1]
	printf '\e]711;%s%d\007' "xft:Iosevka Term:style=bold:size="   $argv[1]
	printf '\e]712;%s%d\007' "xft:Iosevka Term:style=italic:size=" $argv[1]
	printf '\e]713;%s%d\007' "xft:Iosevka Term:style=medium:size=" $argv[1]
end
