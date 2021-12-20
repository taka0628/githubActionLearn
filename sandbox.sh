# !/bin/sh

clang-format --version
if [ ! $? = 0 ]; then
	echo "clang-formatがインストールされていません"
	echo "以下のコマンドを実行してインストールしてください"
	echo "sudo apt update"
	echo "sudo apt install clang-format"
	exit 1
fi

echo "clang-format"
clang-format -i -style=file $(find . -name "*.java" -type f)