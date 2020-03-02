Configuration:

    Description='HSLU'
    Interface=wlp1s0
    Connection=wireless
    Security=wpa-configsection
    IP=dhcp
    WPAConfigSection=(
        'ssid="hslu"'
        'key_mgmt=WPA-EAP'
        'identity="[your_username]"' # TODO: edit
        'password="[your_password]"' # TODO: edit
    )

Encrypted password:

    echo -n '[your_password]' | iconv -f utf16le | openssl md4

Use as `hash:[output_from_above]` in `password` field in the configuration above.
