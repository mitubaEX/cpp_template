# cpp_template

## Usage

contest_setting.sh wget my main.cc files to each problem dir.

```
./contest_setting.sh <problem num> <contest url>
```

## Example

Please remove problem number of url.

### Example: remove a

```
https://beta.atcoder.jp/contests/agc028/tasks/agc028_a -> https://beta.atcoder.jp/contests/agc028/tasks/agc028_
```

### setting problem directory

```
# run
./contest_setting.sh 2 https://beta.atcoder.jp/contests/agc028/tasks/agc028_


$ tree
.
├── A
│   ├── main.cc
│   └── test
│       ├── sample-1.in
│       ├── sample-1.out
│       ├── sample-2.in
│       ├── sample-2.out
│       ├── sample-3.in
│       └── sample-3.out
├── B
│   ├── main.cc
│   └── test
│       ├── sample-1.in
│       ├── sample-1.out
│       ├── sample-2.in
│       ├── sample-2.out
│       ├── sample-3.in
│       └── sample-3.out
├── contest_setting.sh
└── run

```

### test

```
./run A
```

finish.

## Required

- [kmyk/online-judge-tools](https://github.com/kmyk/online-judge-tools)
