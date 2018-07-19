:: use this file to run your own startup commands
:: use  in front of the command to prevent printing the command

:: uncomment this to have the ssh agent load when cmder starts
:: call "%GIT_INSTALL_ROOT%\cmd/start-ssh-agent.cmd"

:: uncomment this next two lines to use pageant as the ssh authentication agent
:: SET SSH_AUTH_SOCK=\tmp/.ssh-pageant-auth-sock
:: call "%GIT_INSTALL_ROOT%\cmd/start-ssh-pageant.cmd"

:: you can add your plugins to the cmder path like so
:: set "PATH=%CMDER_ROOT%\vendor\whatever;%PATH%"

set GIT_FORMAT_AUTHOR="%%C(4)%%aN %%C(7)<%%aE> %%C(4)%%ar %%C(3)%%ad %%C(2)%%h%%C(1)%%d %%C(7)%%<(80,trunc)%%s"
set GIT_FORMAT_COMMIT="%%C(4)%%cN %%C(7)<%%cE> %%C(4)%%cr %%C(3)%%cd %%C(2)%%h%%C(1)%%d %%C(7)%%<(80,trunc)%%s"
set TERM=xterm-256color
