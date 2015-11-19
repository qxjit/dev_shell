function git_introduce --description "Automatically setup git global config based on env"
  if test -n "$GIT_NAME";
    git config --global user.name "$GIT_NAME"
  end

  if test -n "$GIT_EMAIL";
    git config --global user.email "$GIT_EMAIL"
  end
end
