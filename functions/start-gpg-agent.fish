function start-gpg-agent
	set -l envfile "$HOME/.gnupg/gpg-agent.env"

	gpg-agent --daemon --enable-ssh-support --write-env-file "$envfile"
end
