// Part 1

// On the diagonal going south east: (x, -x) ---> (2*x+1)^2
// Find the first corner where this is bigger than the input and then check if it is on the same line
// Didn't do this in full generality because it turned out it can on the same line and the corner piece

.d3.p1:{[filepath]
	n:value first read0 `$":",filepath;
	m:ceiling sqrt n;
	v:{(1+2*x)*(1+2*x)} til m;
	/ first corner number that is bigger than our input
 	c:v[i:first where n<v];
	if[(2*i)>c-n; 
		:abs[i-c-n]+abs[i]
		]
 }

/(-64, 303) ---> 36078 so mhdist is 64+303=371


// Part 2

// this is what the square looks like
			
//147	142	133	122	59
//304	5	4	2	57
//330	10	1	1	54
/351	11	23	25	26
/362	747	806	880	931	

/1
/1+1
/1+2
/1+1+2
/4+1
/5+4+1
/10+1
/11+10+1+1


/1 1 2 4 5 10 11 23 25 26 54 57 59 122 133 142 147 304 330 351 362 747 806 880


// corners
/previous one + one above prev




