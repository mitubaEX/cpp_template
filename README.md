# cpp_template

## Usage

contest_setting.sh wget my main.cc files to each problem dir.

```
./contest_setting.sh <problem num> <contest url>
```

## Example

Please remove problem number of url.

### Step1: remove a

```
https://atcoder.jp/contests/abc115/tasks/abc115_a -> https://atcoder.jp/contests/abc115/tasks/abc115_
```

### Step2: change atcoder into beta.atcoder

```
https://atcoder.jp/contests/abc115/tasks/abc115_ -> https://beta.atcoder.jp/contests/abc115/tasks/abc115_
```


### Step3: setting problem directory

```
# run
curl https://raw.githubusercontent.com/mitubaEX/cpp_template/master/contest_setting.sh | sh -s 2 https://beta.atcoder.jp/contests/abc115/tasks/abc115_



$ tree
.
├── A
│   ├── main.cc
│   └── test
│       ├── sample-1.in
│       ├── sample-1.out
│       ├── sample-2.in
│       └── sample-2.out
├── B
│   ├── main.cc
│   └── test
│       ├── sample-1.in
│       ├── sample-1.out
│       ├── sample-2.in
│       └── sample-2.out
└── run

4 directories, 11 files
```

### test

```
./run A
```

finish.

## Required

- [kmyk/online-judge-tools](https://github.com/kmyk/online-judge-tools)
