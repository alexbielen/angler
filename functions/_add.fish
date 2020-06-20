
function _add -d "Add a package to angler"
   # first git clone the package 
   git clone https://github.com/$argv[1] $angler_repo/
end