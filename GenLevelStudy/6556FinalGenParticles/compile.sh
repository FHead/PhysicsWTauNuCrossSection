input=FinalGenParticleDistributions.cpp
output=Run

root_cflags=`root-config --cflags`
root_libs=`root-config --libs`
fastjet_cflags=`fastjet-config --cxxflags`
fastjet_libs=`fastjet-config --libs`
cxxflags="-g -fPIC -Wno-deprecated -O -ansi -D_GNU_SOURCE -g -O2"
cxx="-m32"
extrainclude="-I/home/fhead/RootMacros"

echo "g++ $input $root_libs $root_cflags $fastjet_libs $fastjet_cflags $cxx $cxxflags $extrainclude -o $output"
g++ $input $root_libs $root_cflags $fastjet_libs $fastjet_cflags $cxx $cxxflags $extrainclude -o $output



