#!/usr/bin/env bash

# 1. 获取 msg 文本
msg=`cat ${1}`
echo -e '\033[32m' # 绿色
echo -e " --> commit-msg 为 \"${msg}\""

# 2. 编写正则
headerReg="^(feat|fix|style):"

# 3. 进行正则匹配
if [[ $msg =~ $headerReg ]]
then
  echo -e '\033[32m' # 绿色
  echo -e ' --> msg 校验通过'
  res=0
else
  echo -e '\033[31m' # 红色
  echo -e ' --> 该 msg 不符合规范，请在 msg 首部添加以下字段: \n'
  echo -e '     `feat: xxx`    →   A new feature'
  echo -e '     `fix: xxx`     →   A bug fix'
  echo -e '     `style: xxx`   →   Changes that do not affect the meaning of code'
  res=1
fi

echo -e '\033[0m'
exit $res