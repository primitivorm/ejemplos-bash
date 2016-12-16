function imprimir() {
    declare -i caracteres i
    caracteres=`echo ${#1}`
    case $3 in
    "left") i=-1 ;;
    "right") true ;;
    *) echo "Parameter #3 invalid"; exit ;;
    esac
    for x in `seq 1 $(echo $caracteres)`; do
        printf "\r%s" "${1:${i}:$caracteres}"
        if [[ $3 == "left" ]]; then
            i=$(( $i - 1 ))
        else
            i=$(( $i + 1 ))
        fi
        if [[ $2 ]]; then a=$2; else a=0; fi
            sleep $a
    done
    printf "\n"
}

imprimir " este es un test..." "0.1" "left"

for i in {0..30}; do printf "\r    \tCargando [%i]..." $i; sleep 0.5; printf "\r[..]\tCargando [%i]..." $i; sleep 0.5; done; printf "\n"
