use uniform False Negetive Rate(uFNR) by -M 'sapmle1=0.1'  to set uFNR correction, 
for samples with less than 20x depth.
(example: doi:10.1038/nature12323; doi: 10.1073/pnas.1401526111)

```
perl plot_psmc.pl -M "BRM1,FLV1" -u 9.796e-9 -g 5 out BRM1.psmc FLV1.psmc
perl psmc_plot.pl -M 'QCC1,QCC2=0.06' -u 9.796e-9 -g 5 -p out2 QCC1.psmc QCC2.psmc
```
