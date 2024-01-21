#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file.png>"
    exit 1
fi

SUNUCU_SIFRE="type_your_server_password_here"

dosya_adi=$(basename "$1")
sunucu_bilgisi="user@server_adress:/path/to/save"

expect -c "
spawn scp \"$1\" \"$sunucu_bilgisi\"
expect {
    \"password:\" {
        send \"$SUNUCU_SIFRE\r\"
        expect eof
    }
}
"

if [ $? -eq 0 ]; then

    dosya_url="https://domain.com/$dosya_adi" # Edit this line for your domain and save location

    echo -n "$dosya_url" | xclip -selection clipboard

    rm "$1"

    # Type the number of seconds after which you want the file to be automatically deleted.
    sleep 60

    expect -c "
spawn ssh user@server_adress \"rm /path/to/file/$dosya_adi\"
expect {
    \"password:\" {
        send \"$SUNUCU_SIFRE\r\"
        expect eof
    }
}
"
else
    echo "Unexpected error."
fi

