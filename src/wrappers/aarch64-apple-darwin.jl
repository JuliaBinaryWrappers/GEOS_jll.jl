# Autogenerated wrapper script for GEOS_jll for aarch64-apple-darwin
export geosop, libgeos, libgeos_cpp

JLLWrappers.@generate_wrapper_header("GEOS")
JLLWrappers.@declare_library_product(libgeos, "@rpath/libgeos_c.1.dylib")
JLLWrappers.@declare_library_product(libgeos_cpp, "@rpath/libgeos.3.12.2.dylib")
JLLWrappers.@declare_executable_product(geosop)
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libgeos,
        "lib/libgeos_c.1.18.2.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgeos_cpp,
        "lib/libgeos.3.12.2.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        geosop,
        "bin/geosop",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
