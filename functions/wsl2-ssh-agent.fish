function wsl2-ssh-agent
    set -gx SSH_AUTH_SOCK "$HOME/.ssh/agent.sock"
    if not ss -a | grep -q "$SSH_AUTH_SOCK";
      rm -f "$SSH_AUTH_SOCK"
      set wsl2_ssh_pageant_bin "$HOME/.ssh/wsl2-ssh-pageant.exe"
      if test -x "$wsl2_ssh_pageant_bin";
        setsid nohup socat UNIX-LISTEN:"$SSH_AUTH_SOCK,fork" EXEC:"$wsl2_ssh_pageant_bin" >/home/gnzh/ssh-log.out 2>&1 &
      else
        echo >&2 "WARNING: $wsl2_ssh_pageant_bin is not executable."
      end
      set --erase wsl2_ssh_pageant_bin
    end

    set -gx GPG_AGENT_SOCK "$HOME/.gnupg/S.gpg-agent"
    if not ss -a | grep -q "$GPG_AGENT_SOCK";
      rm -rf "$GPG_AGENT_SOCK"
      set wsl2_ssh_pageant_bin "$HOME/.ssh/wsl2-ssh-pageant.exe"
	  set config_path "C\:/Users/gnzh/AppData/Local/gnupg"
      if test -x "$wsl2_ssh_pageant_bin";
        setsid nohup socat UNIX-LISTEN:"$GPG_AGENT_SOCK,fork" EXEC:"$wsl2_ssh_pageant_bin -gpgConfigBasepath $config_path --gpg S.gpg-agent" >/home/gnzh/gpg-log.out 2>&1 &
      else
        echo >&2 "WARNING: $wsl2_ssh_pageant_bin is not executable."
      end
      set --erase wsl2_ssh_pageant_bin
    end
end
