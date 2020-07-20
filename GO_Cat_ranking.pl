#!C:\PERL\bin\perl -w
#
# To be used to extract and summarize pathways of different datasets in a brain region

$pw1=undef; $pw3=undef; $pw4=undef; $pw5=undef; $pw6=undef; $pw7=undef;
$rank1=0; $rank2=0; $rank3=0; $rank4=0; $rank5=0; $rank6=0; $rank7=0;
$count=0;

	open (UNIQUE_LIST, "<GO_unique.txt");  
	open (OUT, ">Table_Ranked");
	print OUT ("GO_ID","\t", "EC_AD_V_AsymAD_p", "\t",
 	"EC_AD_V_C_p", "\t", "EC_GSE5281_p", "\t", "EC_I-II_v_0_p", "\t",
 	"EC_III-IV_0_p", "\t", "EC_V-VI_0_p", "\t", "Count", "\n");

	while (<UNIQUE_LIST>) {
		chomp;
   		@line=split (/\t/, $_);
   		$pw_id=$line[0];
   		print OUT ($pw_id, "\t");
   	open (PATH1, "<EC_AD_V_AsymAD_p.txt");  
   	while (<PATH1>){
       		chomp;
		@ln1=split (/\t/, $_);
       		if($_ =~ $pw_id){
		$rank1=$ln1[6]* (-log($ln1[7]));
           	$pw1= '+';
           	$count++;
		last;
 		}
	}
	if($pw1) {
		print OUT ($rank1, "\t");
	}
	else{
      		print OUT ("\t");    
  	}
  	close (PATH1);


   	open (PATH3, "<EC_AD_V_C_p.txt");  
   	while (<PATH3>){
		chomp;
		@ln3=split (/\t/, $_);
       		if($_ =~ $pw_id){
		$rank3=$ln3[6]* (-log($ln3[7]));
           	$pw3='+';
           	$count++;
		last;
		}
       	}
  	if($pw3) {
		print OUT ($rank3, "\t");
	}
	else{
       		print OUT ("\t");    
   	}
   	close (PATH3);

   	open (PATH4, "<EC_GSE5281_p.txt");  
   	while (<PATH4>){
		chomp;
		@ln4=split (/\t/, $_);
       		if($_ =~ $pw_id){
		$rank4=$ln4[6]* (-log($ln4[7]));
        	$pw4='+';
        	$count++;
        	last;
		}
       	}
  	if($pw4) {
		print OUT ($rank4, "\t");
	}
	else{
      		print OUT ("\t");    
   	}
   	close (PATH4);

   	open (PATH5, "<EC_I-II_v_0_p.txt");  
   	while (<PATH5>){
		chomp;
		@ln5=split (/\t/, $_);
       		if($_ =~ $pw_id){
		$rank5=$ln5[6]* (-log($ln5[7]));
        	$pw5='+';
        	$count++;
        	last;
		}
       	}
 	if($pw5) {
		print OUT ($rank5, "\t");
	}
	else{
       		print OUT ("\t");    
   	}
   	close (PATH5); 
 
  	open (PATH6, "<EC_III-IV_0_p.txt");  
  	while (<PATH6>){
		chomp;
		@ln6=split (/\t/, $_);
      		if($_ =~ $pw_id){
		$rank6=$ln6[6]* (-log($ln6[7]));
        	$pw6='+';
        	$count++;
        	last;
 		}
	}
   	if($pw6) {
		print OUT ($rank6, "\t");
	}
	else{
       		print OUT ("\t");    
   	}
   	close (PATH6);	
   	open (PATH7, "<EC_V-VI_0_p.txt");  
   	while (<PATH7>){
		chomp;
		@ln7=split (/\t/, $_);
       		if($_ =~ $pw_id){
		$rank7=$ln7[6]* (-log($ln7[7]));
       		$pw7='+';
        	$count++;
        	last;
		}
	}
   	if($pw7) {
		print OUT ($rank7, "\t");
	}
	else{
       	print OUT ("\t"); 
close (PATH7);
   	}



	print OUT ($count, "\n");
	$pw1=undef; $pw3=undef; $pw4=undef; $pw5=undef; $pw6=undef; $pw7=undef;
   	$rank1=0; $rank2=0; $rank3=0; $rank4=0; $rank5=0; $rank6=0; $rank7=0;
   	$count=0;
}

close(UNIQUE_LIST);
close(OUT);
exit;