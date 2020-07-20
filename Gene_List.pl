#!C:\Perl64\bin\perl -w
#
# To be used to extract number of AU-rich elements in tRNA 3' regions from Vedang Joshi's indices files

	open (OUT, ">EC_Region_Output");
	open (REGION, "<EC_region.txt");
	while (<REGION>){
		chomp; 
		$geneid=$_;
		open (ALL, "<EC_all.txt>";
		while (<ALL>){
			@gol = split (/\s+|\t/, $_);
			if ($gol[1] =~ $geneid) {
			print OUT ($_);
			} 
		}
		close (ALL);

	}


close(REGION);
close(OUT);

exit;





