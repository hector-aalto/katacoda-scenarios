(( $(docker ps -a | grep redis 2>/dev/null | wc -l) >= 1 )) && echo \"done\"