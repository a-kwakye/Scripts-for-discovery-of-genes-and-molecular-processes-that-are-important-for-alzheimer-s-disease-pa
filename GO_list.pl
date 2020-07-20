#!C:\Perl64\bin\perl -w
#
#

	open (OUT, ">EC AD vs AsymAD_Output");
	open (REGION, "<EC AD vs AsymAD.txt");
	while (<REGION>){
		chomp; 
		$ProbeId=$_;
		open (ALL, "<EC_AD_V_AsymAD_p.txt");
		while (<ALL>){	
#			@gol = split (/\s+|\t/, $_);
			if ($_ =~ $ProbeId) {
			print OUT ($_);
			}
		}
		
	}	


close(REGION);
close(OUT);

exit;





