;= echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here

clear=cls
cmderr=cd /d "%CMDER_ROOT%"
e.=explorer .
gvim="C:\Program Files (x86)\Vim\vim80\gvim.exe" $*
history=cat "%CMDER_ROOT%\config\.history"
ll=ls -l -h --show-control-chars -F --color $*
ls=ls --show-control-chars -F --color $*
msbuild="C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\MSBuild\15.0\Bin\MSBuild.exe" $*
nuget="C:\workspace\nuget\nuget.exe" $*
pip2="C:\Program Files\Anaconda2\Scripts\pip.exe" $*
pip3="C:\Program Files\Anaconda3\Scripts\pip.exe" $*
pwd=cd
unalias=alias /d $1
vi=vim $*
vim="C:\Program Files (x86)\Vim\vim80\vim.exe" $*
vimdiff="C:\Program Files (x86)\Vim\vim80\vim.exe" -d $*
vsdevcmd="C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsDevCmd.bat"
vsmsbuild="C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsMSBuildCmd.bat"

;= Git
g=git $*

;= Git Add
ga=git add --verbose $*
gae=git add --verbose --edit $*
gai=git add --verbose --interactive $*
gap=git add --verbose --patch $*
gau=git add --verbose --update $*

;= Git Branch
gb=git branch -vv $*
gba=git branch -vv --all $*
gbc=git checkout -b $*
gbd=git branch --delete $*
gbm=git branch --move $*
gbs=git show-branch $*

;= Git Commit
gc=git commit -v $*
gca=git commit -v --all $*
gcF=git commit -v --amend $*
gcm=git commit --message $*
gcp=git cherry-pick --ff $*
gcS=git commit --gpg-sign $*
gcSF=git commit --amend --gpg-sign $*
gco=git checkout $*
gcs=git show $*

;= Git Diff
gd=git diff $*
gdc=git diff --cached $*

;= Git Fetch
gf=git fetch --all --tags --prune $*
gfc=git clone $*
gfcr=git clone --recurse-submodules $*
gfm=git pull
gfr=git pull --rebase
gfx="C:\workspace\aliases\gfx.cmd" $*
gfu=git remote --verbose update --prune $*

;= Git Grep
gg=git grep $*
ggi=git grep --interactive $*
ggl=git grep --files-with-matches $*
ggv=git grep --invert-match $*
ggw=git grep --word-regexp $*

;= Git Index
gia=git add $*
gid=git diff --cached $*
gir=git reset $*

;= Git Log
gl=git log --pretty=format:"%C(4)%aN %C(4)%ar %C(3)%aD %C(2)%h%C(3)%d %C(7)%<(80,trunc)%s" $*
gla=git log --pretty=format:"%C(4)%aN %C(4)%ar %C(3)%aD %C(2)%h%C(3)%d %C(7)%<(80,trunc)%s" --all $*
glag=git log --pretty=format:"%C(4)%aN %C(4)%ar %C(3)%aD %C(2)%h%C(3)%d %C(7)%<(80,trunc)%s" --all --graph $*
gld=git log --pretty=format:"%C(4)%aN %C(4)%ar %C(3)%aD %C(2)%h%C(3)%d %C(7)%<(80,trunc)%s" --no-merges --first-parent $*
gldp=git log --pretty=format:"%C(4)%aN %C(4)%ar %C(3)%aD %C(2)%h%C(3)%d %C(7)%<(80,trunc)%s" --no-merges --first-parent --patch $*
glg=git log --pretty=format:"%C(4)%aN %C(4)%ar %C(3)%aD %C(2)%h%C(3)%d %C(7)%<(80,trunc)%s" --graph $*

;= Git Merge
gm=git merge $*
gma=git merge --abort $*
gmt=git mergetool $*

;= Git Push
gp=git push $*
gpt=git push --tags $*

;= Git Rebase
gr=git rebase $*
gra=git rebase --abort $*
grc=git rebase --continue $*
gri=git rebase --interactive $*

;= Git Remote

;= Git Stash
gs=git stash $*
gsa=git stash apply $*
gsd=git stash show --patch --stat $*
gsx=git stash drop $*
gsl=git stash list $*
gsp=git stash pop $*
gss=git stash save --include-untracked $*

;= Git Working Copy
gwa=git add --verbose $*
gws=git status $*
gwd=git diff $*
gwr=git reset --soft $*
gwc=git clean $*

