#!/usr/bin/env bash
# Author: alexander
# Thu Feb 28 12:08:58 CST 2019
# http://faculty.salina.k-state.edu/tim/unix_sg/bash/math.html

nl () {
	echo ""
}

n=6/3
echo "n=6/3 --> $n"
nl
declare -i n
n=6/3
echo "declare -i n;"
echo "n=6/3 --> $n"

nl


z=5
echo "z=5"

z=`expr $z+1`
echo "z=\`expr \$z+1\`"

echo "echo \$z"
echo $z

nl
z=5
z=`expr $z + 1`
echo "z=\`expr \$z + 1\`"

echo "echo \$z"
echo $z

nl

let z=5
echo "let z=5"

echo "echo \$z"
echo $z

nl

let z=$z+1
echo "let z=\$z+1"
echo "echo \$z"
echo $z

nl
let z=z+1
echo "let z=z+1"
echo "echo \$z"
echo $z

nl

((e=5))
echo "((e=5))"
echo "echo \$e"
echo $e
nl
(( e = e + 3  ))
echo "(( e = e + 3  ))"
echo "echo \$e"
echo $e
nl
(( e=e+4  ))
echo "(( e=e+4  ))"
echo "echo \$e"
echo $e

