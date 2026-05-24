#!/usr/bin/python3

# program to get the required texlive packages and to generate fmt files
# (c) 2026 Martin Budaj

import os, shutil, io, tarfile, requests, subprocess, re

languages = ['albanian', 'bulgarian', 'catalan', 'czech', 'english', 'french',
             'german', 'greek', 'chinese', 'italian', 'polish', 'portuguese', 'russian',
             'serbian', 'slovak', 'slovenian', 'spanish']

url = 'https://ctan.gust.org.pl/tex-archive/systems/texlive/tlnet/archive/'
tldir = '_tldata'

fmtfiles = ['cm.tar.xz', 'dehyph.tar.xz', 'etex.tar.xz', 'hyphen-base.tar.xz', 'hyph-utf8.tar.xz', 'knuth-lib.tar.xz',
            'kpathsea.tar.xz', 'luatex.tar.xz', 'plain.tar.xz', 'ruhyphen.tar.xz', 'tex-ini-files.tar.xz', 'unicode-data.tar.xz']
for l in languages: fmtfiles.append(f'hyphen-{l}.tar.xz')

binfiles = ['fontware.windows.tar.xz', 'kpathsea.windows.tar.xz',
            'lcdftypetools.windows.tar.xz', 'luatex.windows.tar.xz',
            'metapost.windows.tar.xz', 'pdftex.windows.tar.xz']

# prepare the dir

if os.path.exists(tldir):
    shutil.rmtree(tldir)
os.mkdir(tldir)

# download end extract files:

for f in fmtfiles + binfiles:
    print(f"downloading {f}...")
    response = requests.get(url+f, stream=True)
    response.raise_for_status()
    content = io.BytesIO(response.content)
    with tarfile.open(fileobj=content, mode="r:xz") as tar:
        # check relocation
        basef = f[0:-7]
        reloc = ''
        file_stream = tar.extractfile(f'tlpkg/tlpobj/{basef}.tlpobj')
        for line in file_stream:
            if line.decode().strip() == 'relocated 1':
                reloc = '/texmf-dist'
                break
        file_stream.close()
        # extract
        tar.extractall(path=tldir+reloc, filter="data")

# genrate ls-R

subprocess.run(['ls -R1 > ls-R'], shell=True, cwd=f'{tldir}/texmf-dist')

# modify language.def (used by pdftex and luatex; luatex uses language.dat.lua as well, but that one doesn't need to be filtered)

shutil.move(f'{tldir}/texmf-dist/tex/generic/config/language.def',
            f'{tldir}/texmf-dist/tex/generic/config/language.def-orig')
fout = open(f'{tldir}/texmf-dist/tex/generic/config/language.def', 'w')
fin = open(f'{tldir}/texmf-dist/tex/generic/config/language.def-orig')
for l in fin:
    m = re.search(r'\\addlanguage\{([^}]+)\}', l)
    if m and m.group(1) not in (languages + ['USenglish', 'usenglish', 'UKenglish', 'ukenglish']):
      fout.write(f'%! {l}')
    else:
      fout.write(l)
fout.close()

# create the script to generate fmt files

fout = open(f'{tldir}/bin/windows/genfmt.bat', 'w')
fout.write('''
pdftex -ini -etex -jobname=pdftex -progname=pdftex -translate-file=cp227.tcx pdfetex.ini
luatex -ini luatex.ini
''')
fout.close()
