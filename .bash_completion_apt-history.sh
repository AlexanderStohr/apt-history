_complete_apt_history ()
{
    # disable default completion
    compopt +o default

    local cur prev
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    subcommand="${COMP_WORDS[1]}"

    #  The basic options we'll complete.
    commands="install upgrade remove rollback list"
    COMPREPLY=($(compgen -W "${commands}" -- ${cur}))
    return 0
}
complete -F _complete_apt_history apt-history
