function fish_prompt
  set prompt (echo $PWD | grep -Eo '([^/]+)?/([^/]+)?$')

  which arcus > /dev/null 2>&1
  if test "$status" -a -n "$fish_color_cwd_fade_to"
    echo -n $prompt | arcus $fish_color_cwd $fish_color_cwd_fade_to
  else
    set_color $fish_color_cwd
    echo -n $prompt
    set_color normal
  end

  echo -n " "
end
