function enc
	set -l input_file $argv[1]
	set -l output_file "$input_file.enc"

	if test (count $argv) -gt 1
		set output_file $argv[2]
	end

	openssl enc -aes-256-ecb -salt -in "$input_file" -out "$output_file"
end
