#/bin/bash

# one way using case 
#
: <<'using case'
main() {
  case $# in
    0) printf "%s" "Usage: ./<program name> <argument>"; return 1 ;;
    1) printf "%s" "Got it: $1"; return 0 ;;
    2) printf "%s" "too many "; return 0 ;;
    *) return 1 ;;
  esac
}

main "$@" 
using case


# using if else

main() {

	if [ "$#" -gt 1 ]; then   # $# counts the no of arguments provided 
		echo "too many"
		return 1
		
	elif [ "$#" -eq 1 ]; then
		echo "Got it: $1"
		return 0

	else 
		printf "%s\n" "Usage: ./<program name> <argument>"
		return 1
	fi
}

main "$@" 
# $@ preservs each argument as a separate string , even if arguments contain spaces.


