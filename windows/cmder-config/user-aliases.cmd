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
gad=git add --verbose --interactive $*
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

;= Git Data
gd=git ls-files $*
gdc=git ls-files --cached $*
gdx=git ls-files --deleted $*
gdm=git ls-files --modified $*
gdu=git ls-files --other --exclude-standard $*
gdk=git ls-files --killed $*
gdi=git status --porcelain --short --ignored | sed -n "s/^!! //p" $*

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

;= Git Log Author
gl=git log --topo-order --pretty=format:"%C(4)%aN %C(7)<%aE> %C(4)%ar %C(3)%ad %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --first-parent $*
gla=git log --topo-order --pretty=format:"%C(4)%aN %C(7)<%aE> %C(4)%ar %C(3)%ad %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --all $*
glag=git log --topo-order --pretty=format:"%C(4)%aN %C(7)<%aE> %C(4)%ar %C(3)%ad %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --all --graph $*
gld=git log --topo-order --pretty=format:"%C(4)%aN %C(7)<%aE> %C(4)%ar %C(3)%ad %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --no-merges --first-parent $*
gldp=git log --topo-order --pretty=format:"%C(4)%aN %C(7)<%aE> %C(4)%ar %C(3)%ad %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --no-merges --first-parent --patch $*
glg=git log --topo-order --pretty=format:"%C(4)%aN %C(7)<%aE> %C(4)%ar %C(3)%ad %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --graph $*
gls=git log --topo-order --stat --pretty="format:%C(bold)Commit:%C(reset) %C(2)%H%C(1)%d%n%C(bold)Author:%C(reset) %C(4)%an %C(7)<%ae>%n%C(bold)Date:%C(reset) %C(3)%ai %C(4)(%ar)%C(reset)%n%+B" $*

;= Git Log Committer
glc=git log --topo-order --pretty=format:"%C(4)%cN %C(7)<%cE> %C(4)%cr %C(3)%cd %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --first-parent $*
glca=git log --topo-order --pretty=format:"%C(4)%cN %C(7)<%cE> %C(4)%cr %C(3)%cd %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --all $*
glcag=git log --topo-order --pretty=format:"%C(4)%cN %C(7)<%cE> %C(4)%cr %C(3)%cd %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --all --graph $*
glcd=git log --topo-order --pretty=format:"%C(4)%cN %C(7)<%cE> %C(4)%cr %C(3)%cd %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --no-merges --first-parent $*
glcdp=git log --topo-order --pretty=format:"%C(4)%cN %C(7)<%cE> %C(4)%cr %C(3)%cd %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --no-merges --first-parent --patch $*
glcg=git log --topo-order --pretty=format:"%C(4)%cN %C(7)<%cE> %C(4)%cr %C(3)%cd %C(2)%h%C(1)%d %C(7)%<(80,trunc)%s" --graph $*
glcs=git log --topo-order --stat --pretty="format:%C(bold)Commit:%C(reset) %C(2)%H%C(1)%d%n%C(bold)Committer:%C(reset) %C(4)%cn %C(7)<%ce>%n%C(bold)Date:%C(reset) %C(3)%ci %C(4)(%cr)%C(reset)%n%+B" $*

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
