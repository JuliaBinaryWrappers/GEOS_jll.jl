# Autogenerated wrapper script for GEOS_jll for aarch64-linux-gnu-cxx03
export geosop, libgeos, libgeos_cpp

JLLWrappers.@generate_wrapper_header("GEOS")
JLLWrappers.@declare_library_product(libgeos, "libgeos_c.so.1")
JLLWrappers.@declare_library_product(libgeos_cpp, "libgeos.so.3.13.1")
JLLWrappers.@declare_executable_product(geosop)
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libgeos,
        "lib/libgeos_c.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgeos_cpp,
        "lib/libgeos.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        geosop,
        "bin/geosop",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
