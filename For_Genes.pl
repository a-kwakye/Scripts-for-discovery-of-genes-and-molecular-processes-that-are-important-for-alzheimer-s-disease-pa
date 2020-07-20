#!C:\Perl64\bin\perl -w
#
# To be used to find GO terms with scores greater than 100

	open (OUT, ">Probes_GO0007154_Out");
	open (GO, "<Probes_GO0007154.txt");
	while (<GO>){
		chomp;
		$GO_id=$_;	
	open (REGION, "<Entorhinal_region.txt");
	while (<REGION>){
		@line = split (/\t/, $_);
		if ($line[0] =~ $GO_id) {
		print OUT ($_);
		}
	}
	}
close (REGION);
close(OUT);

exit;





