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
#1571843466
module load icc/2017.1.132-GCC-5.4.0-2.26 
#1571843471
less Makefile 
#1571843533
make -B
#1571843541
sbatch stencil.job
#1571843546
less stencil.out
#1571843556
less ipo_out.optrpt 
#1571843615
vim
#1571843629
vim stencil.c
#1571843644
make -B
#1571843649
sbatch stencil.job
#1571843653
less stencil.out
#1571843677
vim Makefile 
#1571843689
make -B
#1571843692
sbatch stencil.job
#1571843694
less stencil.out
#1571843709
git add .
#1571843719
git commit -m 'its getting slow'
#1571843728
git push origin 23-10
#1571843777
vim stencil.c
#1571843838
make -B
#1571843846
nano Makefile 
#1571843866
make -B
#1571843871
sbatch stencil.job
#1571843874
less stencil.out
#1571843888
vim stencil.c
#1571843900
make -B
#1571843903
sbatch stencil.job
#1571843906
less stencil.out
#1571843929
vim Makefile 
#1571843949
make -B
#1571843954
sbatch stencil.job
#1571843957
less stencil.out
#1571843962
git add .
#1571843971
git commit -m 'back to faster'
#1571843976
git push origin 23-10
#1571844018
less ipo_out.optrpt 
#1571844246
git pull origin 23-10
#1571844254
make -B
#1571844267
vim stencil.c
#1571844279
make -B
#1571844284
sbatch stencil.job
#1571844288
less stencil.out
#1571844303
less ipo_out.optrpt 
#1571844347
vim stencil.c
#1571844396
make -V
#1571844398
make -B
#1571844402
sbatch stencil.job
#1571844411
less stencil.out
#1571844428
less ipo_out.optrpt 
#1571844447
vim stencil.c
#1571844475
make -B
#1571844478
sbatch stencil.job
#1571844481
less stencil.out
#1571844496
vim stencil.c
#1571844532
make -B
#1571844536
sbatch stencil.job
#1571844538
less stencil.,out
#1571844541
less stencil.out
#1571844613
git add .
#1571844618
git commit -m 'huh'
#1571844626
git push origin 23-10
#1571844961
git pull origin 23-10
#1571844972
make -B
#1571844976
sbatch stencil.job
#1571844980
less stencil.out
#1571844991
less ipo_out.optrpt 
#1571845070
vim stencil.c
#1571845078
make -B
#1571845081
sbatch stencil.job
#1571845085
less stencil.out
#1571845093
less ipo_out.optrpt 
#1571846148
make -B
#1571846153
sbatch stencil.job
#1571846156
less stencil.out
#1571846163
stencil.out
#1571846168
less stencil.out
#1571846383
git status
#1571846391
git add .
#1571846396
git commit -m 'new'
#1571846403
git push origin 23-10
#1571846646
git pull origin 23-10
#1571846656
make -B
#1571846681
nano Makefile 
#1571846706
make -B
#1571846710
sbatch stencil.job
#1571846714
less stencil.out
#1571846767
less ipo_out.optrpt 
#1571846837
vim stencil.c
#1571846846
make -B
#1571846849
sbatch stencil.job
#1571846852
less stencil.out
#1571846857
less ipo_out.optrpt 
#1571846917
vim Makefile 
#1571847086
make -B
#1571847091
sbatch stencil.job
#1571847097
less stencil.out
#1571847111
vim stencil.c
#1571847176
git checkout 22-10
#1571847185
git status
#1571847188
git add .
#1571847199
git commit -m 'not good'
#1571847205
git push origin 23-10
#1571847240
git checkout 22-10
#1571847245
vim stencil.c
#1571847280
make -B
#1571847286
sbatch stencil.ljob
#1571847293
sbatch stencil.job
#1571847300
less stencil.out
#1571847316
less ipo_out.optrpt 
#1571847345
vim stencil.c
#1571847367
make -B
#1571847371
sbatch stencil.job
#1571847374
less stencil.out
#1571847378
less ipo_out.optrpt 
#1571847404
vim stencil.c
#1571848309
less ipo_out.optrpt 
#1571848348
vim stencil.c
#1571848504
git checkout 18-10
#1571848508
git add .
#1571848520
git commit -m 'trying old'
#1571848524
git push origin 23-10
#1571848540
git checkout 19-10
#1571848547
vim stencil.c
#1571848568
les
#1571848569
ls
#1571848575
git checkout -- .
#1571848621
git checkout 19-10
#1571848623
la
#1571848624
ls
#1571848631
git checkout 18-10
#1571848633
ls
#1571848637
vim stencil.c
#1571848664
ls
#1571848687
rm ~./vminfo
#1571848696
git checkout -- .
#1571848710
git checkout 21-10
#1571848711
ls
#1571848715
vim stencil.c
#1571848726
make -B
#1571848731
sbatch stencil.job
#1571848734
less stencil.out
#1571848775
less ipo_out.optrpt 
#1571848794
vim stencil.c
#1571848863
make -B
#1571848872
sbatch stencil.job
#1571848876
less stencil.out
#1571848885
less ipo_out.optrpt 
#1571848949
vim stencil.c
#1571849007
make -B
#1571849011
sbatch stencil.job
#1571849014
less stencil.out
#1571849021
less ipo_out.optrpt 
#1571849171
vim stencil.c
#1571849319
make -B
#1571849323
sbatch stencil.job
#1571849333
less stencil.out
#1571849356
less ipo_out.optrpt 
#1571849749
less stencil.out
#1571849754
vim stencil.c
#1571849834
make -B
#1571849838
sbatch stencil.job
#1571849842
less stencil.c
#1571849848
less stencil.out
#1571849869
less Makefile 
#1571849921
nano Makefile 
#1571849938
make -B
#1575885950
ls
#1575885954
\clear
#1575885975
ls
#1575885978
git status
#1575885989
less Makefile 
#1575885999
make -B
#1575886005
git checkout --f
#1575886008
ls
#1575886013
git status
#1575886020
nano Makefile 
#1575886073
module lis
#1575886088
module load mpi
#1575886094
module av mpi
#1575886532
module av mpicc
#1575886620
module load languages/intel-compiler-16-u2
#1575886641
module load languages/intel/201
#1575886649
module av languages/intel
#1575886657
module load languages/intel/2018-u3 
#1575886670
make -B
#1575886688
nano Makefile 
#1575886740
make -B
#1575886751
vim Makefile 
#1575886811
nano Makefile 
#1575886827
vim Makefile 
#1575886856
make -B
#1575886868
sbatch stencil.job
#1575886874
squeue -u sa17826
#1575886882
less stencil.otu
#1575886885
less stencil.out
#1575888888
nano Makefile 
#1575888918
git status
#1575888944
git push origin MPI
#1575889052
git commit -m 'new day fix compiler'
#1575889054
git add .
#1575889056
git commit -m 'new day fix compiler'
#1575889063
git push origin MPI
#1575889251
git pul
#1575889254
git pull
#1575889278
git status
#1575889280
ls
#1575889287
git pull MPI
#1575889298
git pull
#1575889316
git status
#1575889325
ls
#1575889358
git pull origin MPI
#1575889370
ls
#1575889467
mv 800.job 8000.job
#1575889469
ls
#1575889474
git status
#1575889493
git add .
#1575889516
git status
#1575889539
git add --all
#1575889545
git commit -m 'rename'
#1575889553
git push origin MPI
ls
module load languages/intel/2018-u3 
sbatch 1024.job
squeue -u sa17826
less 1024.out
vim stencil.c
make -B
./stencil
./stencil 1024 1024 100
vim stencil.c
make -B
./stencil 1024 1024 100
vim stencil.c
make -B
vim stencil.c
make -B
vim stencil.c
make -B
vim stencil.c
make -B
./stencil 1024 1024 100
vim stencil.c
./stencil 1024 1024 100
make -B
./stencil 1024 1024 100
vim stencil.c
make -B
./stencil 1024 1024 100
vim stencil.c
make -B
./stencil 1024 1024 100
sbatch 1024.job
squeue -u sa17826
less 1024.job
squeue -u sa17826
less 1024.out
vim stencil.c
make -B
sbatch 1024.job
squeue -u sa17826
less 1024.out
vim stencil.c
make -B
sbatch 1024.job
squeue -u sa17826
less 1024.out
vim stencil.c
make -B
sbatch 1024.job
squeue -u sa17826
less 1024.out
vim stencil.c
git checkout --f
module load git 
module load tools/git
git checkout --f
git pull
git pull origin 11-12
make -B
vim stencil.c
git add . 
git commit -m 'removed that dead bracket loool'
git push origin 11-12
git status
git checkout 11-12
git add .
git commit -m 'removed that dead bracket loool'
git push origin 11-12
make -B
vim stencil.c
git add .
git commit -m 'removed that dead bracket loool'
git push origin 11-12
make -B
sbatch 1024.job
squeue -u sa17826
less 1024.out
vim stencil.c
make -B
sbatch 1024.job
squeue -u sa17826
less 1024.out
vim stencil.c
make -B
sbatch 1024.job
squeue -u sa17826
less 1024.out
vim stencil.c
make -B
git status
git add .
git commit -m 'move'
git push origin 11-12
git pull origin 11-12
make -B
sbatch 1024.job
squeue -u sa17862
squeue -u sa17826
sbatch 1024.job
vim stencil.c
make -B
sbatch 1024.job
squeue -u sa17826
less 1024.out
ls
less 1024.out
vim stencil.c
make -B
module load languages/intel/2018-u3 
module list
module load tools/git
make -B
vim stencil.c
vim stencil.c
make -B
module load languages/intel/2018-u3 
module load tools/git
make -B
./stencil 1024 1024 100
sbatch 1024.job
squeue -u sa17826
less 1024.out
vim stencil.c
:x
make -B
sbatch 1024.job
squeue -u sa17826
less 1024.out
squeue -u sa17826
sbatch 1024.job
squeue -u sa17826
less 1024.out
