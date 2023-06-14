rm -rf bin
rm -rf obj
rm -rf ppu
mkdir -p bin
mkdir -p obj
mkdir -p ppu
cd kernel
fpc   -Mdelphi  -Fu../base -o../bin/makeenv makeenv.dpr
fpc   -Mdelphi  -Fu../base -o../bin/verifier verifier.dpr
fpc   -Mdelphi  -Fu../base -o../bin/accom accom.dpr
fpc   -Mdelphi  -Fu../base -o../bin/exporter exporter.dpr
fpc   -Mdelphi  -Fu../base -FE../bin -onaccom naccom.dpr
fpc   -Mdelphi  -Fu../base -FE../bin -otransfer transfer.dpr
cd ../base
fpc   -Mdelphi  -Fu../kernel -FE../bin -oesmprocessor esmprocessor.dpr
fpc   -Mdelphi  -Fu../kernel -FE../bin -omsmprocessor msmprocessor.dpr
fpc   -Mdelphi  -Fu../kernel -FE../bin -owsmparser wsmparser.dpr
cd ../addtools
fpc   -Mdelphi   -Fu../base -FE../bin -oaddfmsg addfmsg.dpr
fpc   -Mdelphi   -FE../bin -ochkerr chkerr.dpr
fpc   -Mdelphi   -Fu../base -FE../bin -ocommextr commextr.dpr
fpc   -Mdelphi   -Fu../base -Fu../libtools -FE../bin -oedtfile edtfile.dpr
fpc   -Mdelphi   -FE../bin -oerrflag errflag.dpr
fpc   -Mdelphi   -FE../bin -omglue mglue.dpr
fpc   -Mdelphi   -FE../bin -omsplit msplit.dpr
fpc   -Mdelphi   -FE../bin -oprune prune.dpr
fpc   -Mdelphi   -FE../bin -oremflags remflags.dpr
cd ../libtools
fpc   -Mdelphi   -Fu../kernel -Fu../base -FE../bin -ocheckvoc checkvoc.dpr
fpc   -Mdelphi   -Fu../kernel -Fu../base -FE../bin -ochkrprem chkrprem.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -ocreatevd createvd.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -odellink dellink.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -oenvget envget.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -orefrem refrem.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -orelinfer relinfer.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -oreliters reliters.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -orenthlab renthlab.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -oreplthls replthls.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -otrivdemo trivdemo.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -ounhereby unhereby.dpr
cd ../usrtools
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -oabsedt absedt.dpr
fpc   -Mdelphi  -Fu../libtools -Fu../kernel -Fu../base -FE../bin -ochklab chklab.dpr
fpc   -Mdelphi  -Fu../libtools -Fu../kernel -Fu../base -FE../bin -oconstr constr.dpr
fpc   -Mdelphi  -Fu../libtools -Fu../kernel -Fu../base -FE../bin -ofindvoc findvoc.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -oinacc inacc.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -oirrths irrths.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -oirrvoc irrvoc.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -olisppars lisppars.dpr
fpc   -Mdelphi  -Fu../kernel -Fu../base -FE../bin -olistvoc listvoc.dpr
fpc   -Mdelphi  -Fu../libtools -Fu../kernel -Fu../base -FE../bin -orelprem relprem.dpr
cd ..
mv ./bin/*.o ./obj
mv ./bin/*.ppu ./ppu
