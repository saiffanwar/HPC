xeyes
passwd
ssh -X sa17826@bc4login.acrc.bris.ac.uk
echo hello
xeyes
ssh -x sa17826@bc4login.acrc.bris.ac.uk
ls
cd
ls
cd onecrive
cd onedrive
ls
mkdir .ssh
touch .ssh/authorized_keys
chmod 644 .ssh/authorized_keys
cat .ssh/sa17826.pub >> .ssh/authorized_keys
ls
cd ~/.ssh/config
mkdir ~/.ssh/config
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
