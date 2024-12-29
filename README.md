# Pyomo-NB: repository of Jupyter notebooks of MILP problems and solutions using Pyomo

Author: Igor V. Kuvychko

## Pyomo materials

* [Pyomo homepage](https://www.pyomo.org/)
* Bynum, M. L., Hackebeil, G. A., Hart, W. E., Laird, C. D., Nicholson, B. L., Siirola, J. D., Watson, J.-P. Woodruff, D. L. [Pyomo – Optimization Modeling in Python. Third Edition.](https://link.springer.com/book/10.1007/978-3-030-68928-5) Springer Optimization and Its Applications Vol. 67. Springer, 2021.
* [Late Jeff Kantor's Pyomo Cookbook](https://jckantor.github.io/ND-Pyomo-Cookbook/README.html)
* Mustafa Ç. Pınar,  Deniz Akkaya [Problems and Solutions for Integer and Combinatorial Optimization: Building Skills in Discrete Optimization](https://epubs.siam.org/doi/book/10.1137/1.9781611977769)

## Installation using Conda

* Create `pyomo_env` conda environment per `environment.yml`: `conda env create -f environment.yml`
* Activate new environment: `conda activate pyomo_env`

Note: this will install Coin-OR IPOPT (Interior Point OPTimizer for non-linear optimization).

### Install CBC (plus GLPK and CLP) 

* Navigate to https://www.coin-or.org/download/binary/Cbc/
* Pick the right binary for your system. Most likely you need `Cbc-master-win64-msvc16-mt.zip`
    * `msvc16` refers to MSVC 2019 C++ compiler (part of the Visual Studio 2019 toolset)
    * `mt` is a runtime library flag (Multi-Threaded statically linked)
* Unpack the zip file into a local folder (e.g., `C:\Solvers\Cbc`)
* Set System PATH variable to include `C:\Solvers\Cbc\bin` (it needs to point to `cbc.exe`)
* You may need to reboot your computer for new environmental variable to take effect

Alternative installation:

* Install CBC: `conda install -c conda-forge coincbc` (I did not test this option)

### Install HiGHS

[HiGHS project](https://ergo-code.github.io/HiGHS/dev/installation/) does not maintain compiled binaries, but Julia community does. Follow [this link](https://github.com/JuliaBinaryWrappers/HiGHSstatic_jll.jl/releases) to download a desired version. I used `HiGHSstatic.v1.8.0.x86_64-w64-mingw32.tar.gz`. 

* Download the file and unpack it (e.g., I put it in `C:\Solvers\HiGHS`)
* Set System PATH variable to include `C:\Solvers\HiGHS\bin` (it needs to point to `cbc.exe`)
* You may need to reboot your computer for new environmental variable to take effect

NOTE: to use HiGHS in Pyomo, specify `SolverFactory("appsi_highs")` (NOT `SolverFactory("highs")`).
