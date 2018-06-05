#!/bin/bash

DOT_DIRECTORY="${HOME}/dotfiles"

# ディレクトリがなかったらダウンロードする設定
# 追加予定

cd ${DOT_DIRECTORY}

for f in .??*;do
# 無視したいファイルやディレクトリ
    [${f}=".git"] && continue
    [${f}=".gitignore"] && continue
    ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done

echo "Setup dotfiles!"
