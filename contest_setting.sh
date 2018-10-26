count=0

# init dir and wget files
for i in {A..F}
do
  if [ $1 -eq $count ]
  then
    break
  else
    wget -O "main$i.cc" "https://raw.githubusercontent.com/mitubaEX/cpp_template/master/main.cc"

    # WIP (craw[ok] --> parse --> split input ABCD...)
    # Other way: vim plugin
    # curl 'https://beta.atcoder.jp/contests/agc028/tasks/agc028_$(echo $i | tr "[A-Z]" "[a-z]")' | pup 'pre json{}' | jq -r '.[1:7][] | "\(.text)\n-------"'

    # count++
    count=$(expr $count + 1)
  fi
done
