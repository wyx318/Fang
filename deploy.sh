#!/usr/bin/env sh

# 缁绢収鍠曠换姘舵嚇濮橆厽鎷遍柟鑸电☉閸ゎ參鏌嗛崶褍鐓傞柣銊ュ閺佸﹦鎷犻敓锟�
set -e

# 闁汇垻鍠愰崹姘舵濞嗘劧鎷锋担瑙勭�ù鐙呮嫹
npm run docs:build

# 閺夆晜绋戦崣鍡涙偨閻旂鐏囬柣銊ュ閺嬪啯绂掔捄鎭掍粴
cd docs/.vuepress/dist

# 濠碘�冲�归悘澶愬及椤栨艾绲洪悽顖氬暙閸╁矂鎳涢鍕毎濞戞柨顦悡娆撳触閿燂拷
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 濠碘�冲�归悘澶愬矗閹存繄顏撮柛鎺炴嫹 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 濠碘�冲�归悘澶愬矗閹存繄顏撮柛鎺炴嫹 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:wyx318/panda01.git master:gh-pages

cd -
