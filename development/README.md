# Development environemnt

- git commit
- doc

## python

- git commit
    - pre-commit
        - [用 pre-commit 輕鬆提升程式碼品質 - MyApollo](https://myapollo.com.tw/blog/pre-commit-the-best-friend-before-commit/)
        - [Python 開發：pre-commit 設定 Git Hooks 教學 - Code and Me](https://blog.kyomind.tw/pre-commit/)
- doc
    - mkdocs-material

``` bash
pyenv virtualenv dev-tools
pyenv activate dev-tools
pip install -r requirements.txt
```

``` bash
# install the hooks into git by .pre-commit-config.yaml
pre-commit install --install-hooks
```
