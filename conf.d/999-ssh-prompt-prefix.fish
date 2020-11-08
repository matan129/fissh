functions -e __original_prompt_for_fissh
functions -c fish_prompt __original_prompt_for_fissh

function fish_prompt --description 'Write out the prompt'
    if [ -n "$SSH_CLIENT" ]
        echo -n -s  (set_color --italics 990000) "ssh " (set_color normal)
    end

    __original_prompt_for_fissh
end
