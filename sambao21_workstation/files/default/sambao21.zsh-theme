local rvm='%{$fg[green]%}‹$(rvm-prompt i v g)›%{$reset_color%}'

local user='%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[magenta]%}%m%{$reset_color%}'

local pwd='%{$fg_bold[green]%}%p%{$fg[blue]%}%~ %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}%{$reset_color%}'

local time="%{$fg[white]%}%{$fg[yellow]%}%T%{$fg[white]%}%{$reset_color%}"

local ruby="%{$fg[white]%}[%{$fg[magenta]%}\$(rvm-prompt i v g)%{$fg[white]%}]%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

PROMPT="%{$fg[white]%}[${time}|${user}|${pwd}%{$fg[white]%}]%{$reset_color%}
%{$fg[red]%}> "

RPROMPT="${rvm}"
