ls
cd ~/.ssh/config
Host bcp4
ls
cd ..
ls
nano config
cd ..
rm config
ls
scp bcp4:hello.c test.c
ls
qstat
squeue
squeue -u sa17826
scancel 2471325
sbatch [options] /Users/saifanwar/OneDrive/University/CSEY3/HPC/hello.c
sbatch -N <1> /Users/saifanwar/OneDrive/University/CSEY3/HPC/hello.c
sbatch [-N <1>] /Users/saifanwar/OneDrive/University/CSEY3/HPC/hello.c
sbatch [-N 1] /Users/saifanwar/OneDrive/University/CSEY3/HPC/hello.c
sbatch -N 1 /Users/saifanwar/OneDrive/University/CSEY3/HPC/hello.c
module list
gcc -v
qsub /Users/saifanwar/OneDrive/University/CSEY3/HPC/hello.c
sbatch /Users/saifanwar/OneDrive/University/CSEY3/HPC/hello.c
cat my.job
cat sa17826.job
scp hello.job sa17826@bc4login.acrc.ac.uk:hello.job
ls
sbatch hello.job
squeue
squeue -u sa17826
ls
nano test1.out
#1570184096
ls
#1570184159
sbatch hello.job
#1570184171
squeue -u sa17826
#1570184195
ls
#1570184208
nano test1.out
#1570184361
sbatch hello.job
#1570184368
ls
#1570184877
module
#1570184989
module load languages/intel/2017.01
#1570184997
module list
#1570185264
nano hello.job
#1570185372
ls
#1570185467
rm hello.job
#1570185469
ls
#1570185480
sbatch hello.sh
#1570185487
ls
#1570185508
nano slurm-2516750.out
#1570185581
ls
#1570185590
rm slurm-2516750.out
#1570185591
ls
#1570185597
rm test1.out
#1570185606
sbatch hello.sh
#1570185609
ls
#1570185619
rm slurm-2516750.out
#1570185625
nano hello.sh
#1570185686
ls
#1570185691
rm slurm-2516750.out
#1570185699
rm slurm-2516752.out
#1570185700
ls
#1570185708
sbatch hello.sh
#1570185710
ls
#1570185737
nano slurm-2516754.out
#1570185769
nano hello.sh
#1570185830
rm slurm-2516754.out
#1570185832
ls
#1570185837
sbatch hello.sh
#1570185846
squeue -u sa17826
#1570185859
ls
#1570185866
nano hello.out
#1570186163
nano hello.sh
#1570186201
rm hello.out
#1570186202
ls
#1570186208
sbatch hello.sh
#1570186213
ls
#1570186217
nano hello.out
#1570186313
nano hello.sh
#1570186334
rm hello.out
#1570186336
ls
#1570186341
sbatch hello.sh
#1570186347
nano hello.out
#1570186388
rm hello.out
#1570186389
ls
#1570186395
nano hello.sh
#1570186430
sbatch hello.sh
#1570186433
nano hello.out
#1570187203
squeue -u sa17826]
#1570187206
squeue -u sa17826
#1570187211
squeue
#1570187500
squeue -R COMS30005
#1570187747
ls
#1570187754
nano hello.out
#1570187780
sbatch hello.c
#1570188025
nano hello.sh
#1570197548
ls
#1570197564
nano hello.sh
#1570462533
sbatch hello.job
#1570462536
ls
#1570462543
sbatch hello.sh
#1570462550
nano hello.out
#1570462562
nano hello.sh
#1570462586
sbatch hello.sh
#1570462590
nano hello.out
#1570462600
nano hello.sh
#1570462618
sbatch hello.sh
#1570462621
nano hello.out
#1570703835
ls
#1570703837
cd cw1
#1570703839
ls
#1570703842
cd introhpc
#1570703843
ls
#1570703848
nano makefile
#1570703855
nano Makefile
#1570703863
./stencil
#1570703874
make
#1570703877
ls
#1570703882
./stencil
#1570704681
ls
#1570704684
cd cw1
#1570704687
cd introhpc
#1570704689
ls
#1570704709
./stencil 8000 8000 100
#1570703184
ls
#1570703211
mkdir cw1
#1570703213
ls
#1570703215
cd cw1
#1570703216
ls
#1570703715
cd ..
#1570703716
ls
#1570703719
cd cw1
#1570703721
ls
#1570703724
cd introhpc
#1570703726
ls
#1570704059
sbatch stencil.job
#1570704104
squeue
#1570704123
ls
#1570704135
make
#1570704146
./stencil 1024 1024 100
#1570704164
./stencil 4096 4096 100
#1570705063
nano Makefile
#1570705132
make
#1570705144
./stencil 1024 1024 100
#1570705165
make -B
#1570705172
./stencil 1024 1024 100
#1570705195
nano Makefile
#1570705210
./stencil 4096 4096 100
#1570705381
nano stencil.job
#1570705403
sbatch stencil.job
#1570705405
squeue
#1570705427
ls
#1570705432
nano stencil.out
#1570705497

#1570705504
sbatch stencil.job
#1570705647
sbatch stencil.job -p veryshort -A COMS30005 -- reservation COMS30005
#1570705653
squeue -u sa17826
#1570705749
nano sbatch.job
#1570705776
nano stencil.job
#1570705797
ls
#1570705804
module gcc -v
#1570705814
ls
#1570705818
nano stencil.out
#1570705841
./stencil.out
#1570705845
nano stencil.oout
#1570705850
nano stencil.out
#1570706036
sbatch stencil.job
#1570706044
squeue -u sa17826
#1570706319
nano stencil.job
#1570706336
sbatch stencil.job
#1570706341
make -B
#1570706343
sbatch stencil.job
#1570706349
nano stencil.out
#1570706357
y
#1570706910
s
#1570706911
ls
#1570706925
nano stencil_1024_1024_100.pgm
ls
ls cw1
ls
cd cw1
cd introhpc
#1571041938
ls
#1571041948
cd cw1/introhpc
#1571041950
ls
#1571041952
make
#1571041960
make -B
#1571041963
ls
#1571041965
make
#1571041978
./stencil 1024 1024 100
#1571041985
nano make
#1571041994
nano Makefile
#1571042015
make -B
#1571042028
./stencil 1024 1024 100
#1571042718
nano make
#1571042725
nano Makefile
#1571042785
make -B
#1571042798
./stencil 1024 1024 100
#1571042812
nano Makefile
#1571042832
make -B
#1571042836
./stencil 1024 1024 100
#1571042310
cd cw1/introhpc
#1571042311
ls
#1571042314
make
#1571042322
make -B
#1571042334
./stencil 4096 4096 100
#1571042549
./stencil 8000 8000 100
cd cw1/introhpc
ls
nano stencil.c
ls
cd cw1/introhpc
ls
make -B
./stencil 1024 1024 100
./stencil 4096 4096 100
./stencil 8000 8000 100
nano Makefile
make -B
sbatch stencil.job
./stencil.out
nano Makefile
make -B
nano Makefile
make -B
nano Makefile
make -B
./stencil 1024 1024 100
sbatch stencil.job
nano stencil.out
gprof stencil.out gmon.out > profile.txt
ls
less profile.txt
nano profile.txt
cd cw1/introhpc
ls
make -B
gcc -pg stencil.c
make -B
gcc -std=c99 -pg -Ofast -mtune=native -Wall stencil.c -o stencil
./a.out
ls
./stencil.out
./stencil
gcc -std=c99 -pg -Ofast -mtune=native -Wall stencil.c -o stencil
./stencil 1024 1024 100
gprof stencil.out gmon.out > profile.txt
nano stencil.out
nano stencil.job
sbatch stencil.job
nano stencil.out
#1571150103
ls
#1571150253
rm hello.c
#1571150254
ls
#1571150257
rm hello.out
#1571150261
rm hello.sh
#1571150262
ls
#1571150284
mv cw1/* .
#1571150285
ls
#1571150290
cd cw1
#1571150291
ls
#1571150300
cd ..
#1571150300
ls
#1571150303
rm cw1
#1571150310
rmdir c w1
#1571150315
rmdir cw1
#1571150316
ls
#1571150326
mv introhpc/* .
#1571150327
ls
#1571150334
rmdir introhpc
#1571150335
ls
#1571150346
cd introhpc
#1571150347
ls
#1571150349
cd ..
#1571150352
rmdir introhpc
#1571150379
cd introhpc
#1571150381
ls
#1571150383
cd ..
#1571150385
ls
#1571150394
rmdir -r introhpc
#1571150405
rmdir --help
#1571150476
rm -rf introhpc/
#1571150477
ls
#1571150489
git pull
#1571150539
git init
#1571150689
git add *.c
#1571150699
git add LICENSE
#1571150747
git commit -m 'initial skeleton commit'
#1571150801
git config --global user.name "Saif Anwar"
#1571150817
git config --global user.email anwarsaif99@hotmail.com
#1571150835
git commit --amend --reset-author
#1571150985
git commit --amend --reset-author "Initial skeleton commit"
#1571150990
git commit --amend --reset-author
rm hello.c+0x0): first defined here
stencil:(.rodata+0x8): multiple definition of `__dso_handle'
stencil:(.rodata+0x8): multiple definition of `__dso_handle'+0x0): first defined here
stencil:(.rodata+0x8): multiple definition of `__dso_handle'
/usr/lib/gcc/x86_64-redhat-linux/4.8.5/crtbegin.o:(.rodata+0x0): first+0x0): first defined here
stencil:(.rodata+0x8): multiple definition of `__dso_handle'
/usr/lib/gcc/x86_64-redhat-linux/4.8.5/crtbegin.o:(.rodata+0x0): first+0x0): first defined here
stencil:(.rodata+0x8): multiple definition of `__dso_handle'
/usr/lib/gcc/x86_64-redhat-linux/4.8.5/crtbegin.o:(.rodata+0x0): first+0x0): first defined here
stencil:(.rodata+0x8): multiple definition of `__dso_handle'
ls
make
make -B
ls
make -B
sbatch stencil.job
ls
rm stencil.out
ls
sbatch stencil.job
nano stencil.out
y
ls
nano stencil.out
git commit
git commit -m
git init
ls
git init
git --version
#1571167718
ls
#1571167722
git --version
#1571167725
git commit
#1571167822
git push origin master
#1571167829
git push master
#1571167860
git config --get remote.origin.url
#1571167868
git remote show origin
#1571167973
cd .git
#1571167976
cd ..
#1571167986
rmdir -rf .git/
#1571168022
git add .
#1571168046
git commit -m "test commit"
#1571168222
git remote add origin https://github.com/saiffanwar/HPC.git
#1571168227
git remote -v
#1571168240
git push -u origin master
#1571168349
git pull
#1571168642
git remote add origin https://github.com/saiffanwar/HPC.git
#1571168656
git push origin
#1571169100
git git 
#1571169102
git 
#1571170356
git commit
#1571170434
git status
#1571170446
git commit origin master
#1571170454
git commit origin
#1571170461
git commit -u origin master
#1571170479
git commit
#1571169119
ls
#1571169122
git add .
#1571169123
ls
#1571169132
git push origin master
#1571169159
git push --help
#1571169323
git pull
#1571169391
rmdir -r .git/
#1571169400
rmdir --r .git/
#1571169406
rmdir --rf .git/
#1571169414
rmdir -rf .git/
#1571169424
rmdir --help
#1571169437
rm -r .git/
#1571169482
rm -rf .git/
#1571169484
ls
#1571169487
git init
#1571169511
git add .
#1571169525
git commit -m "First commit"
#1571169554
git remote add origin https://github.com/saiffanwar/HPC.git
#1571169557
git remote -v
#1571169567
git push -u origin master
#1571169618
git pull
#1571169650
git pull origin master
#1571169664
git push origin master
#1571169855
git pull
#1571169869
git push -u origin master
#1571169913
git remote add origin https://github.com/saiffanwar/HPC.git
#1571169922
git pull origin master
#1571170004
git rm README.md
#1571170015
git merge README.md
#1571170031
git commit origin master
#1571170050
git push
#1571170127
git status
#1571170134
git commit
#1571170566
git status
#1571170595
git pull origin
#1571170608
git commit "Initial Commit"
#1571170615
git commit"1"
#1571170621
git commit "1"
#1571170658
git commit -i 
#1571170680
git commit -am 'Conflicts Resolved'
#1571170685
git status
#1571170693
git commit origin master
#1571170701
git add .
#1571170704
git status
#1571170709
git push origin master
#1571170756
git pull
#1571170771
git pull origin master
#1571177409
ls
#1571177412
git status
#1571177426
ls
#1571177481
git pull
#1571177488
git pull origin
#1571177503
git merge
#1571177511
git merge stencil.c
#1571177547
git add .
#1571177555
git stash
#1571177566
git push origin
#1571177583
git pull origin
#1571177614
nano stencil.c
#1571177649
git pull 15-10
#1571177660
git pull origin 15-10
#1571177723
git status
#1571177748
nano stencil
#1571177866
rm stencil
#1571177876
rm stencil.pgm
#1571177880
git status
#1571177892
git commit -m "test new branch"
#1571177903
git status
#1571177950
git add .
#1571177960
git status
#1571177966
git rm stencil
#1571177972
git status
#1571177978
git rm stencil.pgm
#1571177981
git status
#1571177992
git commit -m "test new branch"
#1571178013
git push origin 15-10
#1571178270
ls
#1571178273
git status
#1571178300
git pull origin 15-10
#1571178469
make
#1571178478
sbatch stencil
#1571178482
sbatch stencil.job
#1571178492
nano stencil.out
#1571178535
gcc -std=c99 -Wall -pg stencil.c -o stencil
#1571178542
./stencil
#1571178549
./stencil 1024 1024 100
#1571178601
gprof stencil.out gmon.out > profile.txt
#1571178607
gprof stencil gmon.out > profile.txt
#1571178611
ls
#1571178619
git pull origin 15-10
#1571178657
git commit -m "new profile"
#1571178664
git add .
#1571178666
git commit -m "new profile"
#1571178672
git pull origin 15-10
#1571178692
git push origin 15-10
#1571178750
nano Makefile
#1571178769
make -B
#1571178785
sbatch stencil.job
#1571178789
./stencil
#1571178824
gprof stencil gmon.out > profile.txt
#1571178839
nano profile.txt
#1571178854
less profile.txt
#1571178862
./stencil
#1571178867
./stencil 1024 1024 100
#1571178872
gprof stencil gmon.out > profile.txt
#1571178875
less profile.txt
#1571179054
less Makefile
#1571179087
make
#1571179090
make -B
#1571179101
./stencil 1024 1024 100
#1571179118
gprof stencil gmon.out > profile.txt
#1571179124
less profile.txt
#1571179142
./stencil 4096 4096 100
#1571179225
gprof stencil gmon.out > profile.txt
#1571179229
less profile.txt
#1571179500
git commit -m "profile of 4096"
#1571179508
git add .
#1571179511
git commit -m "profile of 4096"
#1571179522
git push origin 15-10
#1571237505
ls
#1571237511
less profile.txt
#1571237558
git status
#1571237568
git branch 16-10
#1571237571
git status
#1571237577
git checkout 16-10
#1571237581
git add .
#1571237593
git status
#1571237610
git commit -m "new day commit 16-10"
#1571237618
git push origin 16-10
#1571238753
sbatch stencil.job
#1571238764
squeue -u sa17826
#1571238773
less stencil.out
#1571238805
make -B
#1571238814
nano Makefile
#1571238839
make -B
#1571238873
sbatch stencil.job
#1571238888
nano Makefile
#1571238934
make -B
#1571238940
modules avail
#1571238946
module available
#1571238976
module load icc/2017.1.132-GCC-5.4.0-2.26 
#1571238979
make -B
#1571238986
sbatch stencil.job
#1571238993
less stencil.out
#1571239268
nano stencil.job
#1571239604
make -B
#1571239610
sbatch stencil.job
#1571239616
squeue -u sa17826
#1571239652
less stencil.out
#1571239802
gcc --versiob
#1571239803
gcc --version
#1571239816
less Makefile
#1571239868
nano stencil.job
#1571239889
make -B
#1571239895
sbatch stencil.job
#1571239903
squeue -u sa17826
#1571240113
less stencil.out
#1571241576
nano Makefile
#1571241603
make -B
#1571241633
nano Makefile
#1571241655
make -B
#1571241691
sbatch stencil.job
#1571241699
squeue -u sa17826
#1571241733
less stencil.out
#1571241748
nano Makefile
#1571241783
ls
#1571241789
less intel
#1571241800
cd intel
#1571241803
ls
#1571241806
cd ism
#1571241808
ls
#1571241810
cd rm
#1571241812
ls
#1571241817
cd ..
#1571241821
ls
#1571243262
nano Makefuke
#1571243277
nano Makefile
#1571243461
make -B
#1571243478
module list
#1571243488
module load icc/2017.1.132-GCC-5.4.0-2.26 
#1571243497
module list
#1571243508
make -B
#1571243521
./stencil 1024 1024 100
#1571243597
gprof stencil gmon.out > profile.txt
#1571243617
less profile.txt
#1571243647
./stencil 4096 4096 100
#1571243658
gprof stencil gmon.out > profile.txt
#1571243668
less profile.txt
#1571243683
nano stencil.job
#1571246862
nano Makefile
#1571246889
make -B
#1571246896
ls
#1571246907
less stencil.optrpt
#1571247415
nano Makefile
#1571247433
make 
#1571247435
make -B
#1571247445
nano Makefile
#1571247463
make -B
#1571247488
sbatch stencil.job
#1571247494
squeue -u sa17826
#1571247501
less stencil.out
#1571247565
nano Makefile
#1571247588
make -B
#1571247606
./stencil 1024 1024 100
#1571247617
sbatch stencil.job
#1571247625
less stencil.out
#1571247668
nano Makefile
#1571247775
make -B
#1571247786
nano Makefile
#1571247813
make -B
#1571247827
./stencil 1024 1024 100
#1571247837
sbatch stencil.job
#1571247842
less stencil.out
#1571248210
nano Makefile
#1571248239
less stencil.out
ls
make -B
module load icc/2017.1.132-GCC-5.4.0-2.26 
make -B
git status
git --version
#1571306636
ls
#1571306639
make -B
#1571306654
module load icc/2017.1.132-GCC-5.4.0-2.26 
#1571306655
ls
#1571306658
make -B
#1571306688
./stencil 1024 1024 100
#1571306698
sbatch stencil.job
#1571306704
less stencil.out
#1571306719
less Makefile
#1571306765
nano Makefile
#1571306784
make -B
#1571306823
sbatch stencil.job
#1571306829
less stencil.out
#1571306958
nano stencil.job
#1571306985
make -B
#1571306990
sbatch stencil.job
#1571306998
squeue -u sa17826
#1571307003
less stencil.out
#1571307030
nano stencil.job
#1571307047
sbatch stencil.job
#1571307052
squeue -u sa17826
#1571307087
less stencil.out
#1571307139
git status
#1571307148
git branch 17-10
#1571307152
git checkout 17-10
#1571307182
git commit -m "using icc @0.19"
#1571307189
git add .
#1571307192
git commit -m "using icc @0.19"
#1571307200
git push origin 17-10
#1571307793
ls
#1571307799
less ipo_out.optrpt 
#1571308987
less Makefile
#1571309019
less ipo_out.optrpt 
#1571310936
ls
#1571310948
less Makefile
#1571316534
ls
#1571316546
sbatch stencil.job
#1571316551
squeue -u sa17826
#1571316573
ls
#1571316581
vim stencil.out
#1571316670
vim stencil.c
#1571316699
make -B
#1571316709
module load icc/2017.1.132-GCC-5.4.0-2.26 
#1571316712
module list
#1571316714
ls
#1571316840
less stencil.out
#1571318182
vim Makefile
#1571318204
nano Makefile
#1571318227
make -B
#1571318239
sbatch stencil.job
#1571318246
squeue -u sa17826
#1571318248
sa17826
#1571318251
squeue -u sa17826
#1571318288
less stencil.out
#1571318301
nano Makefile
#1571318354
nano stencil.job
#1571318374
make -B
#1571318382
sbatch stencil.job
#1571318389
squeue -u sa17826
#1571318396
less stencil.out
#1571318406
ls
#1571318413
less ipo_out.optrpt 
#1571318495
nano Makefile
#1571318553
make -B
#1571318564
sbatch stencil.job
#1571318571
less stencil.out
#1571318582
less ipo_out.optrpt 
ls
less ipo_out.optrpt 
ls
make -B
module load ic
module load icc/2017.1.132-GCC-5.4.0-2.26 module avail icc
module lost
module list
module available
module load icc/2017.1.132-GCC-5.4.0-2.26 
module list
make -B
sbatch stencil.job
squeue -u sa17826
less stencil.out
nano stencil.job
vim stencil.job
vim --version
vim stencil.job
less stencil.job
vim stencil.job
make -B
sbatch stencil.job
less stencil.out
less ipo_out.optrpt 
vim Makefile
make -B
sbatch stencil.job
less stencil.out
vim Makefile
make -B
sbatch stencil.job
less stencil.out
vim stencil.out
vim stencil.c
make -B
sbatch stencil.job
less stencil.out
vim stencil.c
make -B
sbatch stencil.job
less stencil.out
vim Makefile
make -B
sbatch stencil.job
gprof stencil gmon.out > profile.txt
ls
less profile.txt
vim stencil.c
make -B
vim stencil.c
make -B
git status
git --version
#1571421435
git status
#1571421443
git branch 18-10
#1571421447
git checkout 18-10
#1571421452
git status 
#1571421456
git add .
#1571421474
git commit -m "New day commit"
#1571421484
git push origin 18-10
#1571421672
git status
#1571421689
git pull origin 18-10
#1571421701
vim stencil.c
#1571421711
make -B
#1571421721
module load icc/2017.1.132-GCC-5.4.0-2.26 
#1571421724
make -B
#1571421748
vim stencil.c
#1571421902
git pull origin 18-10
#1571421914
vim stencil.c
#1571421947
git pull origin 17-10
#1571421981
git push origin 16-10
#1571422011
git commit -m "commit"
#1571422018
git add .
#1571422020
git commit -m "commit"
#1571422027
git pull origin 17-10
#1571422044
git push origin 16-10
#1571422126
git pull origin 18-10
#1571422128
saiffanwar
#1571422144
git rm stencil.c
#1571422151
git merge stencil.c
#1571422161
git add .
#1571422169
git commit -m "merge"
#1571422185
git pull origin 18-10
#1571422220
vim stencil.c
#1571422249
make -B
#1571422257
sbatch stencil.job
#1571422262
less stencil.c
#1571422266
less stencil.out
#1571423545
vim stencil.job
#1571423571
make -B
#1571423578
sbatch stencil.job
#1571423583
less stencil.out
#1571423654
git pull origin 18-10
#1571423668
git commit -a
#1571423686
git add .
#1571423700
git commit -m "change:[A




igt 
:
ls
ls
;
#1571423757
git status
#1571423767
module load icc/2017.1.132-GCC-5.4.0-2.26 
#1571423770
module list
#1571423776
git pull origin 18-10
#1571423797
git merge
#1571423867
git add stencil.c && git commit -m "removed merge conflicts"
#1571423878
git pull origin 18-10
#1571423932
vim steencil.c
#1571423941
vim stencil.c
#1571423973
make -B
#1571423981
sbatch stencil.job
#1571423986
squeue -u sa17826
#1571424001
less stencil.out
#1571424012
vim stencil.c
#1571424124
make -B
#1571424136
vim stencil.c
#1571424180
make -B
#1571424186
sbatch stencil.job
#1571424190
squeue -u sa17826
#1571424206
less stencil.out
#1571424218
vim stencil.jo
#1571424223
vim stencil.job
#1571424239
make -B
#1571424244
sbatch stencil.job
#1571424251
squeue -u sa17826
#1571424259
less stencil.out
#1571425388
module load icc/2017.1.132-GCC-5.4.0-2.26 
#1571425485
make -B
#1571425492
sbatch stencil.job
#1571425498
less stencil.out
#1571425505
vim stencil.c
#1571425523
git status
#1571425525
git add .
#1571425547
git commit -m "changing all to float didnt work"
#1571425553
git push origin 18-10
#1571425573
git status
#1571425586
git pull origin 18-10
#1571425635
git push origin 18-10
#1571426385
vim stencil.c
git status
module av git
module load tools/git/2.18.0
git --version
git status
git pull origin 18-10
git branch 19-10
git checkout 19-10
git add .
git commit -m 'new day commit 19-10'
git push origin 19-10
git status
git open
git --help
ls
vim stencil.c
make -B
module load icc/2017.1.132-GCC-5.4.0-2.26 
make -b
make -B
sbatch stencil.job
squeue- u sa17826
squeue -u sa17826
less stencil.out
vim stencil.c
git add .
git commit -m 'change float back to double'
git push origin 19-10
make -b
vim stencil.c
make -b
sbatch stencil.job
less stencil.out
nano Makefile
make -b
make -B
sbatch stencil.job
less stencil.out
vim Makefile
make -B
sbatch stencil.job
less stencil.out
vim stencil.c
ls
less ipo_out.optrpt 
vim stencil.c
make -B
sbatch stencil.job
less stencil.out
less ipo_out.optrpt 
vim stencil.c
make -b
make -B
module av omp
module av openmp
module load OpenMPI/3.0.0-GCC-7.2.0-2.29 
module list
make -B
vim stencil.c
make -B
sbatch stencil.job
less stencil.out
vim stencil.c
make -B
sbatch stencil.job
less stencil.out
git commit -m 'fd it'
git add .
git commit -m 'fd it'
git pull origin 19-10
git pull origin 18-10
vim stencil.c
make -B
sbatch stencil.job
less stencil.out
vim stencil.c
make -B
vim stencil.c
make -B
sbatch stencil.job
less stencil.out
vim stencil.out
vim stencil.c
make -b
make -B
sbatch stencil.job
less stencil.out
vim stencilc
less stencil.out
vim stencil.c
nano stencil.out
y
vim stencil.c
make -B
sbatch stencil.job
less stencil.out
nano Makefile
make -B
sbatch stencil.job
less stencil.out
nano Makefile
make -b
make -B
sbatch stencil.job
less stencil.out
nano Makefile
make -B
nano Makefile
make -B
vim Makefile
vim stencil.c
git pull origin 19-10
git add .
git commit -m 'random changes'
git pull origin 19-10
git merge
git rm stencil.c
git merge stencil.c
git commit -m 'rdm'
git pull origin 19-10
vim stencil.c
ls
git pull origin 19-10
ls
git status
git pull origin master 
ls
git add .
git pull
ls
git checkout 19-10
git checkout 18-10
commit -m 'mess'
git commit -m 'mess'
ls
git checkout 18-10
ls
vim stencil.c
git pull 19-10
git pull origin 19-10
git commit -m 'vimfo'
git add .
git commit -m 'vimfo'
git push origin 19-10
git pull origin 19-10
ls
vim stencil.c
make -B
nano Makefile
make -B
vim stencil.c
make -B
sbatch stencil.job
less stencil.out
vim stencil.job
make -B
sbatch stencil.job
squeue -u sa17826
less stencil.out
vim stencil.job
make -B
sbatch stencil.job
less stencil.out
squeue -u sa17826
less stencil.out
git add .
git status
git checkout 19-10
git commit -m 'sped up a lot'
git checkout 19-10
git add .
git commit -m 'sped up a lot 0.10'
git push origin 19-10
git checkout 18-10
git push origin 19-10
git push origin 18-10
less README
less README.txt
less README.md
ls
python check.py --ref-stencil-file stencil_1024_1024_100.pgm --stencil-file stencil.pgm
vim stencil.job
python check.py --ref-stencil-file stencil_1024_1024_100.pgm --stencil-file stencil.pgm
make -B
sbatch stencil.job
python check.py --ref-stencil-file stencil_1024_1024_100.pgm --stencil-file stencil.pgm
nano stencil.c
git checkout 19-10
git merge
git merge 19-10
git merge 18-10
#1571646476
ls
#1571646484
vim stencil.c
#1571646570
nano ~/.viminfo
#1571646618
vim stencil.c
#1571646634
nano ~/.viminfo
#1571646704
vim stencil.c
#1571646729
rm ~/.viminfo
#1571646730
ls
#1571646732
rm ~/.viminfo
#1571646738
vim stencil.c
#1571647615
make -B
#1571647624
module load icc/2017.1.132-GCC-5.4.0-2.26 
#1571647629
make -B
#1571647690
less ipo_out.optrpt 
#1571647739
sbatch stencil.job
#1571647751
less stencil.out
#1571647945
less ipo_out.optrpt 
#1571648055
vim stencil.c
#1571771302
module load icc/2017.1.132-GCC-5.4.0-2.26 
#1571771316
git statu
#1571771318
git status
#1571771324
git checkout -- .
#1571771329
make -B
#1571771335
sbatch stencil.job
#1571771340
less stencil.out
#1571771450
less ipo_out.optrpt 
