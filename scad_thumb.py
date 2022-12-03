#!/usr/bin/python3

import os
import sys
import time
import hashlib
import shutil

fin = ""
fout = ""
size = ""

def main():
    m = hashlib.md5()
    m.update(fin)
    ff = "/tmp/scad_to_png_%s.scad" % m.hexdigest()

    try:
        shutil.copyfile(fin.decode("UTF-8"), ff)
    except Exception as e:
        print("Copy error")
        print(e)
 
    cmd = "openscad -o %s.png --imgsize=%s,%s %s 2> /dev/null && mv %s.png %s" % (fout, size, size, ff, fout, fout)
    os.system(cmd)
    #os.remove(ff)
    sys.exit(0)

if __name__ == '__main__':

    #log file - enable to debug
    f = open("/tmp/scad_to_png_tmp.log", "w")
    f.write("%i %s" % (len(sys.argv), sys.argv))
    f.close()

    if len(sys.argv) != 4:
        print("add args [in file] [out file] [size]")
        sys.exit(0)
    else:
        fin = sys.argv[1].encode("UTF-8")
        fout = sys.argv[2]
        size = sys.argv[3]

    main()
