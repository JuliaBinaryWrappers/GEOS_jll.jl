# Autogenerated wrapper script for GEOS_jll for x86_64-w64-mingw32-cxx11
export libgeos, libgeos_cpp

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"

# Relative path to `libgeos`
const libgeos_splitpath = ["bin", "libgeos_c-1.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgeos_path = ""

# libgeos-specific global declaration
# This will be filled out by __init__()
libgeos_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgeos = "libgeos_c-1.dll"


# Relative path to `libgeos_cpp`
const libgeos_cpp_splitpath = ["bin", "libgeos-3-8-0.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgeos_cpp_path = ""

# libgeos_cpp-specific global declaration
# This will be filled out by __init__()
libgeos_cpp_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgeos_cpp = "libgeos-3-8-0.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"GEOS")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libgeos_path = normpath(joinpath(artifact_dir, libgeos_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgeos_handle = dlopen(libgeos_path)
    push!(LIBPATH_list, dirname(libgeos_path))

    global libgeos_cpp_path = normpath(joinpath(artifact_dir, libgeos_cpp_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgeos_cpp_handle = dlopen(libgeos_cpp_path)
    push!(LIBPATH_list, dirname(libgeos_cpp_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(LIBPATH_list, ';')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

