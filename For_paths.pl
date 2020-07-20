#!C:\PERL\bin\perl -w
#
# To be used to extract and summarize pathways of different datasets in a brain region

$pw1=undef; $pw2=undef; $pw3=undef; $pw4=undef; $pw5=undef; $pw6=undef; $pw7=undef;
$rank1=0; $rank2=0; $rank3=0; $rank4=0; $rank5=0; $rank6=0; $rank7=0;
$count=0;

	open (UNIQUE_LIST, "<Unique_test.txt");  
	open (OUT, ">EC_Region_Summary");
	print OUT ("GO_ID","\t", "EC_netr", "\t",
 	"EC_AD_AS_netr", "\t", "EC_AD_C_netr", "\t", "EC_AS_C_netr", "\t",
 	"EC_II_0_netr", "\t", "EC_IV_0_netr", "\t", "EC_VI_0_netr", "\t", 
	"Count", "\n");

	while (<UNIQUE_LIST>) {
   		@line=split (/\t/, $_);
   		$pw_id=$line[0];
   		print OUT ($pw_id);
   	open (PATH1, "<EC_netr.txt");  
   	while (<PATH1>){
       		$rank1++;
       		if($_ =~ $pw_id){
           	$pw1= '+';
           	$count++;
#			print OUT ($rank1, "\t");
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
       		$rank2++;
       		if($_ =~ $pw_id){
           	$pw2='++';
           	$count++;
		print OUT ($rank2);
          	
       		}
   		if($pw2) {
			print OUT ($rank2);		
		}
		else{
       		print OUT ("\t");    
   		}
		
	}
	last;
   		close (PATH2);	
   	open (PATH3, "<EC_AD_C_netr.txt");  
   	while (<PATH3>){
       		$rank3++;
       		if($_ =~ $pw_id){
           	$pw3='+++';
           	$count++;
		print OUT ($rank3);
		
       		}
  		if($pw3) {
		print OUT ($rank3);
		
		}
		else{
       		print OUT ("\t");    
   		}
			
	}
	last;
   		close (PATH3);
   	open (PATH4, "<EC_AS_C_netr.txt");  
   	while (<PATH4>){
       		$rank4++;
       		if($_ =~ $pw_id){
        	$pw4='++++';
        	$count++;
        	print OUT ($rank4);
    	
       		}
  		if($pw4) {
		print OUT ($rank4);
		}
		else{
      		print OUT ("\t");    
   		}
		
   	}
	last;
   		close (PATH4);
   	open (PATH5, "<EC_II_0_netr.txt");  
   	while (<PATH5>){
       		$rank5++;
       		if($_ =~ $pw_id){
        	$pw5='+++++';
        	$count++;
        	print OUT ($rank5);
        
       		}
 		if($pw5) {
		print OUT ($rank5);
		}
		else{
       			print OUT ("\t");    
   		}
		
   	}
	last;	
   		close (PATH5);  
  	open (PATH6, "<EC_IV_0_netr.txt");  
  	while (<PATH6>){
      		$rank6++;
      		if($_ =~ $pw_id){
        	$pw6='++++++';
        	$count++;
        	print OUT ($rank6);
      	
 		}
   		if($pw6) {
		print OUT ($rank6);
		}
		else{
       		print OUT ("\t");    
   		}
		
   	}
	last;
   		close (PATH6);	
   	open (PATH7, "<EC_VI_0_netr.txt");  
   	while (<PATH7>){
   		$rank7++;
       		if($_ =~ $pw_id){
       		$pw7='+++++++';
        	$count++;
        	print OUT ($rank7);
		}
   		if($pw7) {
			print OUT ($rank7);
		}
		else{
       		print OUT ("\t"); 
   		}
		
	}
last;
		close (PATH7);
		print OUT ($count, "\n");
	$pw1=undef; $pw2=undef; $pw3=undef; $pw4=undef; $pw5=undef; $pw6=undef; $pw7=undef;
   	$rank1=0; $rank2=0; $rank3=0; $rank4=0; $rank5=0; $rank6=0; $rank7=0;
   	$count=0;

}
close(UNIQUE_LIST);
close(OUT);
exit;