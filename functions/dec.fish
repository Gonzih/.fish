function dec
	set -l input_file $argv[1]

	if test (count $argv) -gt 1
		set -l output_file $argv[2]
		openssl enc -d -aes-256-ecb -in "$input_file" -out "$output_file"
	else
		openssl enc -d -aes-256-ecb -in "$input_file"
	end

end
