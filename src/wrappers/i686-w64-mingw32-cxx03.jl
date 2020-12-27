# Autogenerated wrapper script for GEOS_jll for i686-w64-mingw32-cxx03
export libgeos, libgeos_cpp

JLLWrappers.@generate_wrapper_header("GEOS")
JLLWrappers.@declare_library_product(libgeos, "libgeos_c-1.dll")
JLLWrappers.@declare_library_product(libgeos_cpp, "libgeos-3-9-0.dll")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libgeos,
        "bin\\libgeos_c-1.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgeos_cpp,
        "bin\\libgeos-3-9-0.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
