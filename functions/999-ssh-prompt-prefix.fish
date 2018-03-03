functions -c fish_prompt __original_prompt

function fish_prompt --description 'Write out the prompt'
    if [ -n "$SSH_CLIENT" ]
        echo -n -s  (set_color --italics 990000) "ssh " (set_color normal)
    end

    __original_prompt
end
