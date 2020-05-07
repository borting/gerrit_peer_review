# gerrit_peer_review

[git review](https://www.mediawiki.org/wiki/Gerrit/git-review) is a command-line tool for Gerrit code review system.
This bash script provides a wrapper function for submitting code to Gerrit and supports autocomplete when filling branch name and reviewers.

## Installation

Download script
```
$ wget https://raw.githubusercontent.com/borting/gerrit_peer_review/master/gerrit_peer_review.bash -O .gerrit_peer_review.bash
```

Add script to ~/.bashrc
```
if [[ -f ~/.gerrit_peer_review.bash ]]; then
  . ~/.gerrit_peer_review.bash
fi
```

## Usage

Push code to Gerrit for review
```
$ peerreview <branch_name> <reviewer_1> <reviewer_2> <reviewer ...>
```
Type \<Tab\>\<Tab\> to activate autocomplete.
Run autocomplete on first argument will list branches of current git repos, and run autocomplete on the rest arguments will list frequently-asked reviewers.

## Configuration
To add frequently-asked reviewers, append reviewers' e-mail address to **reviewers** in .gerrit_peer_review.bash
```
reviewers="alice@gmail.com bob@gmail.com"
```
