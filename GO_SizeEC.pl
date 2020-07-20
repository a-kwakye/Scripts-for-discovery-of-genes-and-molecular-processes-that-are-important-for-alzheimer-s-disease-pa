#!C:\PERL\bin\perl -w
#
# For finding the size of GOs and the genes that overlap in that GO

$pw1=undef; $pw2=undef; $pw3=undef; $pw4=undef; $pw5=undef; $pw6=undef; $pw7=undef;
$count=0;

	open (UNIQUE_LIST, "<EC_UniqueGOs.txt");  
	open (OUT, ">EC_GOSize");
	print OUT ("GO_ID","\t", "EC.netr", "\t",
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
           	$pw1= '+';
           	$count++;
		last;
 		}
	}
	if($pw1) {
		print OUT ($ln1[2], "\t");
	}
	else{
      		print OUT ("\t");    
  	}
  	close (PATH1);

open (PATH2, "<EC_AD_AS_netr.txt");  
   	while (<PATH2>){
		chomp;
		@ln2=split (/\t/, $_);
       		if($_ =~ $pw_id){
           	$pw2='+';
           	$count++;
		last;
       		}
	}
   	if($pw2) {
		print OUT ($ln2[2], "\t");		
	}
	else{
       		print OUT ("\t");    
   	}
   	close (PATH2);	

   	open (PATH3, "<EC_AD_C_netr.txt");  
   	while (<PATH3>){
		chomp;
		@ln3=split (/\t/, $_);
       		if($_ =~ $pw_id){
           	$pw3='+';
           	$count++;
		last;
		}
       	}
  	if($pw3) {
		print OUT ($ln3[2], "\t");
	}
	else{
       		print OUT ("\t");    
   	}
   	close (PATH3);

   	open (PATH4, "<EC_AS_C_netr.txt");  
   	while (<PATH4>){
		chomp;
		@ln4=split (/\t/, $_);
       		if($_ =~ $pw_id){
        	$pw4='+';
        	$count++;
        	last;
		}
       	}
  	if($pw4) {
		print OUT ($ln4[2], "\t");
	}
	else{
      		print OUT ("\t");    
   	}
   	close (PATH4);

   	open (PATH5, "<EC_II_0_netr.txt");  
   	while (<PATH5>){
		chomp;
		@ln5=split (/\t/, $_);
       		if($_ =~ $pw_id){
        	$pw5='+';
        	$count++;
        	last;
		}
       	}
 	if($pw5) {
		print OUT ($ln5[2], "\t");
	}
	else{
       		print OUT ("\t");    
   	}
   	close (PATH5); 
 
  	open (PATH6, "<EC_IV_0_netr.txt");  
  	while (<PATH6>){
		chomp;
		@ln6=split (/\t/, $_);
      		if($_ =~ $pw_id){
        	$pw6='+';
        	$count++;
        	last;
 		}
	}
   	if($pw6) {
		print OUT ($ln6[2], "\t");
	}
	else{
       		print OUT ("\t");    
   	}
   	close (PATH6);	
   	open (PATH7, "<EC_VI_0_netr.txt");  
   	while (<PATH7>){
		chomp;
		@ln7=split (/\t/, $_);
       		if($_ =~ $pw_id){
       		$pw7='+';
        	$count++;
        	last;
		}
	}
   	if($pw7) {
		print OUT ($ln7[2], "\t");
	}
	else{
       	print OUT ("\t"); 
close (PATH7);
   	}
	

	print OUT ($count, "\n");
	$pw1=undef; $pw2=undef; $pw3=undef; $pw4=undef; $pw5=undef; $pw6=undef; $pw7=undef;
   	$count=0;
}

close(UNIQUE_LIST);
close(OUT);
exit;