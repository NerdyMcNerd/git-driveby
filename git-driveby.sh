function git
{
    if [[ $@ == "driveby" ]]; then
        command git add --all
        command git commit -m "$(curl http://whatthecommit.com/index.txt)" && git push
    else
        command git "$@"
    fi
}

export -f git
