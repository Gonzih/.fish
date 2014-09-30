function upload-file
    curl --upload-file "$argv[1]" "http://transfer.sh/$argv[1]/virustotal"
end
