# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule GEOS_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("GEOS")
JLLWrappers.@generate_main_file("GEOS", UUID("d604d12d-fa86-5845-992e-78dc15976526"))
end  # module GEOS_jll
