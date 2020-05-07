#!/usr/bin/env bash

_peerreview_complete() {
    branches=$(git branch -l | cut -c3-)
	reviewers="alice@gmail.com bob@gmail.com"

	case $COMP_CWORD in
		1)	# brnach name
			COMPREPLY=($(compgen -W "$branches" -- $2))
			;;
		*)	# reviewers
			COMPREPLY=($(compgen -W "$reviewers" -- $2))
			;;
    esac
}

function peerreview() {
	git review -c $1 --reviewer ${@:2}
}

complete -F _peerreview_complete peerreview

