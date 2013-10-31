set PATH /usr/local/php5/bin $PATH
set NODE_PATH "/usr/local/lib/node_modules"
set PATH "/usr/local/share/npm/bin" $PATH
set PATH $PATH /usr/local/sbin

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

function git_prompt
    if git root >/dev/null 2>&1
        set_color normal
        printf ' on '
        set_color magenta
        printf '%s' (git currentbranch ^/dev/null)
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
