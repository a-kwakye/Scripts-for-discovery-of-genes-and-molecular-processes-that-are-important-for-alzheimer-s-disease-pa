#!C:\Perl64\bin\perl -w
#
# To be used to find GO terms with scores greater than 100

	open (OUT, ">GO0007154_Out");
	open (GO, "<GO0007154.txt");
	while (<GO>){
		chomp;
		$GO_id=$_;	
	open (REGION, "<EC_genes_AD_C.txt");
	while (<REGION>){
		@line = split (/\t/, $_);
		if ($line[11] =~ $GO_id) {
		print OUT ($_);
		}
	}
	}
close (REGION);
close(OUT);

exit;





