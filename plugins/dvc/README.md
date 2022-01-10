# dvc plugin

This plugin adds completion for [Data Version Control (DVC)](https://dvc.org),
as well as some aliases for common `dvc` commands.

To use it, add `dvc` to the plugins array in your zshrc file:

```zsh
plugins=(...dvc)
```

## Aliases

| Alias | Command                 |
| :---- | :---------------------- |
| dst   | dvc status              |
| dvca  | dvc add                 |
| dvcc  | dvc commit              |
| dvco  | dvc checkout            |
| dvccl | dvc config --list       |
| dvcl  | dvc pull                |
| dvcp  | dvc push                |
| dvcr  | dvc remote              |
| dvcra | dvc remote add          |
| dvcrm | dvc remove              |
| drp   | dvc repro               |
| drps  | dvc repro --single-item |
| drpf  | dvc repro --force       |
| der   | dvc exp run             |
| des   | dvc exp show            |
| del   | dvc exp list            |
| derm  | dvc exp remove          |
| dms   | dvc metrics show        |
| dmd   | dvc metrics diff        |
