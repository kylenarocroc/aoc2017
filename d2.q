// Part 1
.d2.p1:{[filepath]
	m:value each read0 `$":",filepath;
	sum max[flip m]- min[flip m]
 }

// Part 2
.d2.p2:{[filepath]
	m::value each read0 `$":",filepath;
	sum {sum raze a*(b - {1=c%\:c:1+til[x]} count b:0=floor[a] - a:m[x]%\:m[x])} each til count m
 }

.d2.fp:"/home/kcorcoran/aoc2017/d2.txt";
