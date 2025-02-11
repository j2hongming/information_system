# Development environemnt

- git commit
- change log
- doc

## python

- git commit
    - pre-commit
        - [用 pre-commit 輕鬆提升程式碼品質 - MyApollo](https://myapollo.com.tw/blog/pre-commit-the-best-friend-before-commit/)
        - [Python 開發：pre-commit 設定 Git Hooks 教學 - Code and Me](https://blog.kyomind.tw/pre-commit/)
- change log
    - git-cliff
        - generate changelog files from the Git history by utilizing conventional commits
        - [Getting Started | git-cliff](https://git-cliff.org/docs/)
            - [available templates](https://git-cliff.org/docs/usage/initializing)
            - [Examples | git-cliff](https://git-cliff.org/docs/usage/examples/)
- doc
    - mkdocs-material

``` bash
pyenv virtualenv dev-tools
pyenv activate dev-tools
pip install -r requirements.txt
```


### pre-commit
``` bash
# IOnstall the hooks into git by .pre-commit-config.yaml
pre-commit install --install-hooks

# Install the commit-msg hook in your project repo
pre-commit install --hook-type commit-msg
```

### git-cliff
``` bash
# examples
# available templates: https://git-cliff.org/docs/usage/initializing
git cliff --config github

# Set output path
git cliff --config github --output CHANGELOG.md

# Without path, the default is `CHANGELOG.md`
git cliff --config github -o
```
