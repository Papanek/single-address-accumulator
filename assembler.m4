divert(-1)
define(loc,   0)
define(avail, 99)
define(comment, `dnl')
define(DC, `define(`avail',decr(avail))')
define(LABEL, `define($1,loc))')
define(STOP,  `define(`loc', incr(loc))dnl')
define(LD,    `define(`loc', incr(loc))dnl')
define(STO,   `define(`loc', incr(loc))dnl')
define(ADD,   `define(`loc', incr(loc))dnl')
define(SUB,   `define(`loc', incr(loc))dnl')
define(MPY,   `define(`loc', incr(loc))dnl')
define(DIV,   `define(`loc', incr(loc))dnl')
define(IN,    `define(`loc', incr(loc))dnl')
define(OUT,   `define(`loc', incr(loc))dnl')
define(BR,    `define(`loc', incr(loc))dnl')
define(BZ,    `define(`loc', incr(loc))dnl')
define(BGTR,  `define(`loc', incr(loc))dnl')
include(polynomial-ex.txt)
define(zeros,avail)
define(loop, `ifelse(loc,zeros,`dnl',define(`loc', incr(loc))0
`loop')')
define(`DC', `define($1,avail)define(`avail', incr(avail))dnl')
define(`LABEL', `dnl')
define(`STOP', `0')
define(`LD',   `eval(100+$1)')
define(`STO',  `eval(200+$1)')
define(`ADD',  `eval(300+$1)')
define(`SUB',  `eval(400+$1)')
define(`MPY',  `eval(500+$1)')
define(`DIV',  `eval(600+$1)')
define(`IN',   `eval(700+$1)')
define(`OUT',  `eval(800+$1)')
define(`BR',   `eval(900+$1)')
define(`BZ',   `eval(1000+$1)')
define(`BGTR', `eval(1100+$1)')
divert(0)dnl
include(polynomial-ex.txt)dnl
loop dnl
divert(-1)
define(`DC', `divert(0)dnl
$2
divert(-1)dnl')
include(polynomial-ex.txt)