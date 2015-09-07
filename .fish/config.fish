set PATH /usr/local/php5/bin $PATH
set PATH /usr/local/sbin $PATH

set PATH /usr/local/share/npm/bin $PATH
set NODE_PATH /usr/local/lib/node_modules

function ll
	ls -lah
end

function fish_prompt
    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
	set_color normal 
	git_prompt
    hg_prompt
	echo ' > '
end

function fish_greeting
    archey -c
    date
end

function git_prompt
    if git rev-parse --show-toplevel >/dev/null 2>&1
        set_color normal
        printf ' on '
        set_color magenta
        printf '%s' (git branch --contains HEAD | grep '*' | tr -s ' ' | cut -d ' ' -f2 ^/dev/null)
        set_color normal
    end
end

function hg_prompt
    if hg root >/dev/null 2>&1
        set_color normal
        printf ' on '
        set_color magenta
        printf '%s' (hg branch ^/dev/null)
		printf '-'
		printf '%s' (hg parent --template "{rev}" ^/dev/null)
        set_color normal
    end
end
