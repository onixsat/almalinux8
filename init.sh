#!/bin/bash
  file="config/config.sh"
  if [[ -f "$file" && -s "$file" ]]; then
      echo "exist and not empty"
  else
      echo "not exist or empty";
  fi



      if [ -f "$file" ]
      then
        echo "existe"
              cryptr/cryptr.bash decrypt config/config.sh.aes > ai.txt
      else
          echo "$0: File '${file}' not found."
          cryptr/cryptr.bash encrypt config/config.sh > oi.txt
      fi

      tmpfile=$(mktemp)       ## create temporary file

      [ "$?" -eq 0 ] || {     ## validate zero exit code from mktemp
          printf "error: mktemp had non-zero exit code.\n" >&2
          exit 1
      }

      [ -f "$tmpfile" ] || {  ## validate temp file actually created
          printf "error: tempfile does not exist.\n" >&2
          exit 1
      }

      trap 'rm -f "$tmpfile"' SIGTERM SIGINT EXIT
      cat > "$tmpfile" << EOM
      The
      EOM

      cat "$tmpfile"








      