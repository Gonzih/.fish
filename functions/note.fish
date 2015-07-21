function note
	set -l file ~/Dropbox/notes/$argv[1].org

  if not test -f $file
     echo "#-*- mode: org -*-" > $file
  end

	emacsclient -nw $file
end
