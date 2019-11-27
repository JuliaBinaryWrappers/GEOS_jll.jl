# Autogenerated wrapper script for GEOS_jll for arm-linux-musleabihf
export libgeos_cpp, libgeos

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libgeos_cpp`
const libgeos_cpp_splitpath = ["lib", "libgeos.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgeos_cpp_path = ""

# libgeos_cpp-specific global declaration
# This will be filled out by __init__()
libgeos_cpp_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgeos_cpp = "libgeos-3.8.0.so"


# Relative path to `libgeos`
const libgeos_splitpath = ["lib", "libgeos_c.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgeos_path = ""

# libgeos-specific global declaration
# This will be filled out by __init__()
libgeos_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgeos = "libgeos_c.so.1"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libgeos_cpp_path = abspath(joinpath(artifact"GEOS", libgeos_cpp_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgeos_cpp_handle = dlopen(libgeos_cpp_path)
    push!(LIBPATH_list, dirname(libgeos_cpp_path))

    global libgeos_path = abspath(joinpath(artifact"GEOS", libgeos_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgeos_handle = dlopen(libgeos_path)
    push!(LIBPATH_list, dirname(libgeos_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

