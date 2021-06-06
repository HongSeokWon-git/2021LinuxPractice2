BEGIN	{ printf "stNum\tName\tKor\tEng\tMath\tSum\tAvg\n" }
		{if(NR>1)
		{ count++;
			Kor += $3; Eng += $4; Math += $5;
			sum = ($3 + $4 + $5);
			avg = sum/3;
			printf "%d\t%s\t%d\t%d\t%d\t%d\t%.1f\n", $1, $2, $3, $4, $5, sum, avg
		}}
END {if(count>0){
	Kor/=count;
	ENf/=count;
	Math/=count;
	printf "\t\t%.1f\t%.1f\t%.1f\n", Kor, Eng, Math;
}}
