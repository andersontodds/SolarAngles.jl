using SolarAngles
using Test, Dates

@testset "SolarAngles.jl" begin
    @test SolarAngles.localsolartime(DateTime(2020, 01, 01,00,00,00), 0, 0) <= 0
    # more tests
end
