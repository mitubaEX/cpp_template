# oj command is required (https://github.com/kmyk/online-judge-tools)
count=0

# init dir and wget files
for i in {A..F}
do
  if [ $1 -eq $count ]
  then
    break
  else
    mkdir $i
    wget -O $i/"main.cc" "https://raw.githubusercontent.com/mitubaEX/cpp_template/master/main.cc"

    # WIP (craw[ok] --> parse --> split input ABCD...)
    # Other way: vim plugin
    # curl 'https://beta.atcoder.jp/contests/agc028/tasks/agc028_$(echo $i | tr "[A-Z]" "[a-z]")' | pup 'pre json{}' | jq -r '.[1:7][] | "\(.text)\n-------"'

    cd $i
    oj dl "$2$(echo $i | tr '[A-Z]' '[a-z]')"
    cd ..

    # count++
    count=$(expr $count + 1)
  fi
done

wget -O run "https://raw.githubusercontent.com/mitubaEX/cpp_template/master/run.sh"
chmod +x ./run
