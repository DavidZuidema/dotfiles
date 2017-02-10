#dotfiles

My *nix dotfiles

##Installation
```
$ ./install.sh
```

##Prompt Git Status Symbols

###[?] Untracked Files
###[Δ] Unstaged Changes
###[+] Staged, Uncommitted Changes
###[☂] Stashed Changes
###[↓] Need To Pull
###[↑] Need To Push
###[☢]Local and Upstream Have Diverged
This usually happens when someone rebases the branch, but could indicate something more nefarious has occurred.

###[↸ ] No Upstream Set
Git can't check if your local branch is up to date because your current branch is not tracking any remote branches.

If this branch came from a remote repo, set the upstream manually with:
`$ git branch -u <remote>/<branch>`

If you made this branch locally just push it:
`$ git push <remote> <branch>`

###[✂] Detached HEAD
