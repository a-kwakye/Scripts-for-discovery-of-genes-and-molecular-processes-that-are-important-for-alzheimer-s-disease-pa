#!C:\Perl64\bin\perl -w
#
# To be used to find GO terms with scores greater than 100

	open (OUT, ">Below10ADC_Out");
	open (GO, "<Below10_AD_C.txt");
	while (<GO>){
		chomp;
		$GO_id=$_;	
	open (REGION, "<EC_AD_C.txt");
	while (<REGION>){
		@line = split (/\s+|\t/, $_);
		if ($line[0] =~ $GO_id) {
		print OUT ($_);
		}
	}
	}
close (REGION);
close(OUT);

exit;





