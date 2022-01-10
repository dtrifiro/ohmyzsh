if (( $+commands[dvc] )); then
  command mkdir -p "$ZSH_CACHE_DIR/completions"
  (( ${fpath[(Ie)"$ZSH_CACHE_DIR/completions"]} )) || fpath=("$ZSH_CACHE_DIR/completions" $fpath)

  if [[ ! -f "$ZSH_CACHE_DIR/completions/_dvc" ]]; then
    declare -g -A _comps
    autoload -Uz _dvc
    _comps[dvc]=_dvc
  fi

  dvc completion -s zsh >! "$ZSH_CACHE_DIR/completions/_dvc" &|
fi

alias dst="dvc status"
alias dvca="dvc add"
alias dcc="dvc commit"
alias dco="dvc checkout"
alias dvccl="dvc config --list"
alias dvcl="dvc pull"
alias dvcp="dvc push"
alias dvcr="dvc remote"
alias dvcra="dvc remote add"
alias dvcrm="dvc remove"
alias drp="dvc repro"
alias drps="dvc repro --single-item"
alias drpf="dvc repro --force"
alias der="dvc exp run"
alias des="dvc exp show"
alias del="dvc exp list"
alias derm="dvc exp remove"
alias dms="dvc metrics show"
alias dmd="dvc metrics diff"
