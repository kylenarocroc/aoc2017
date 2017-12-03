// Part 1
.d1.p1:{[filepath]
	n:value each first read0 `$":",filepath;
	f:{[l] sum l -1+where 0=deltas l,first l};
	f n
 }

// Part 2

.d1.p2:{[filepath]
	n2:(`long$count[n]%2) cut n:value each first read0 `$":",filepath;
	2*sum n2[0] where n2[0]~'n2[1]
 }

.d1.fp:"/home/kcorcoran/aoc2017/day1.txt";
