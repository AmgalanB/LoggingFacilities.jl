using LoggingFacilities
using Test

@testset "LoggingFacilities.jl" begin
    # Write your tests here.
    ts_fmt = TimestampLoggingFormat("Y-m-d", LoggingFacilities.InjectByAddingToKwargs())
    js_fmt = JSONLoggingFormat(nothing)
    
    js_fmt = JSONLoggingFormat(2)
    with_logger(logger(logger(SimplestLogger(), ts_fmt), js_fmt)) do
           x = 1
           y = "abc"
           z = 35.55
           @info "hey" x y z
           @warn "blah"
           @error "cool"
    end


end
