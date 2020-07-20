#!C:\PERL\bin\perl -w
#
# To be used to extract and summarize pathways of different datasets in a brain region

$pw1=undef; $pw2=undef; $pw3=undef; $pw4=undef; $pw5=undef; $pw6=undef; $pw7=undef;
$rank1=0; $rank2=0; $rank3=0; $rank4=0; $rank5=0; $rank6=0; $rank7=0;
$count=0;

	open (UNIQUE_LIST, "<EC_unique_paths.txt");  
	open (OUT, ">EC_Region_Summary_test");
	print OUT ("GO_ID","\t", "EC_netr", "\t",
 	"EC_AD_AS_netr", "\t", "EC_AD_C_netr", "\t", "EC_AS_C_netr", "\t",
 	"EC_II_0_netr", "\t", "EC_IV_0_netr", "\t", "EC_VI_0_netr", "\t", 
	"Count", "\n");

	while (<UNIQUE_LIST>) {
		chomp;
   		@line=split (/\t/, $_);
   		$pw_id=$line[0];
   		print OUT ($pw_id, "\t");
   	open (PATH1, "<EC_netr.txt");  
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

open (PATH2, "<EC_AD_AS_netr.txt");  
   	while (<PATH2>){
		chomp;
       		if($_ =~ $pw_id){
		$rank2=$ln1[6]* (-log($ln1[7]));
           	$pw2='+';
           	$count++;
		last;
       		}
	}
   	if($pw2) {
		print OUT ($rank2, "\t");		
	}
	else{
       		print OUT ("\t");    
   	}
   	close (PATH2);	

   	open (PATH3, "<EC_AD_C_netr.txt");  
   	while (<PATH3>){
		chomp;
       		if($_ =~ $pw_id){
		$rank3=$ln1[6]* (-log($ln1[7]));
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

   	open (PATH4, "<EC_AS_C_netr.txt");  
   	while (<PATH4>){
		chomp;
       		if($_ =~ $pw_id){
		$rank4=$ln1[6]* (-log($ln1[7]));
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

   	open (PATH5, "<EC_II_0_netr.txt");  
   	while (<PATH5>){
		chomp;
       		if($_ =~ $pw_id){
		$rank5=$ln1[6]* (-log($ln1[7]));
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
 
  	open (PATH6, "<EC_IV_0_netr.txt");  
  	while (<PATH6>){
		chomp;
      		if($_ =~ $pw_id){
		$rank6=$ln1[6]* (-log($ln1[7]));
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
   	open (PATH7, "<EC_VI_0_netr.txt");  
   	while (<PATH7>){
		chomp;
       		if($_ =~ $pw_id){
		$rank7=$ln1[6]* (-log($ln1[7]));
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
	$pw1=undef; $pw2=undef; $pw3=undef; $pw4=undef; $pw5=undef; $pw6=undef; $pw7=undef;
   	$rank1=0; $rank2=0; $rank3=0; $rank4=0; $rank5=0; $rank6=0; $rank7=0;
   	$count=0;
}

close(UNIQUE_LIST);
close(OUT);
exit;