# Autogenerated wrapper script for GEOS_jll for i686-w64-mingw32-cxx03
export geosop, libgeos, libgeos_cpp

JLLWrappers.@generate_wrapper_header("GEOS")
JLLWrappers.@declare_library_product(libgeos, "libgeos_c.dll")
JLLWrappers.@declare_library_product(libgeos_cpp, "libgeos.dll")
JLLWrappers.@declare_executable_product(geosop)
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libgeos,
        "bin\\libgeos_c.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgeos_cpp,
        "bin\\libgeos.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        geosop,
        "bin\\geosop.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
