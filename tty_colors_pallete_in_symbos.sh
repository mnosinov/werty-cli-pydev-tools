colors=$@
for (( n=0; n < $colors; n++ )) do
    printf " [%d] $(tput setaf $n)%s$(tput sgr0)" $n "wMwMwMwMwMwMw
"
done

