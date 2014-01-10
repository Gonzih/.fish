function downforme
	curl --silent "http://www.isup.me/$argv" | grep -e "It's.*[.!]" | sed "s/\s*\(It's[^<>]*[.!]\).*\$/\1/"
end
