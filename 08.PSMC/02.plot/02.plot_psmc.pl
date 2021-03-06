my @f=@ARGV;
die "$0 outprefix 1.psmc 2.psmc ...
# change the gnuplot path of 'plot_psmc_MAR_SAT_SL.pl' first
# edit the script of the parameter (-u -g ... ) if you need ; '-u 9.796e-9 -g 5'
\n"unless @ARGV;
my @out;
my $out=shift(@f);

open(O,"> $0.$out.sh");
print O "cat ";
for my $f(@f){
    $f =~/(.+)\.psmc/;
    my $id=$1;
    print O " $f";
    push(@out,"$id");
}
print O "> aa;\n";
print O "
perl plot_psmc_MAR_SAT_SL.pl -M \"",join(",",@out),"\" -u 7.5e-9 -g 3 -x 10000 -X 10000000 -Y 500000 $out aa;
rm $out $out*txt $out*par *eps  aa* *Good;\n\n";
close O;


`sh $0.$out.sh`;
