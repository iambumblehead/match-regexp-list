# match-regexp-list

ex,
```lfe
(match '(#('numprefix "^[0-9]*$")
         #('meeprefix "^mee.*$")) 
       "mee-too"))
;; #('meeprefix ("mee-too"))
(match '(#('numprefix "^[0-9]*$")
         #('meeprefix "^mee.*$")) 
       "universe"))
;; 'nomatch
```

## Introduction

match-regexp-list serves as an example for using [lfe][1].

[1]: https://github.com/lfe/lfe "lfe"

## Installation

Just add it to your ``rebar.config`` deps:

```erlang
  {deps, [
    ...
    {match-regexp-list, ".*",
      {git, "git@github.com:YOURNAME/match-regexp-list.git", "master"}}
      ]}.
```

And then do the usual:

```bash
    $ rebar get-deps
    $ rebar compile
```


## Usage

Add content to me here!
