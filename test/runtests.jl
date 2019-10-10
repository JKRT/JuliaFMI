"""
Run all tests for simulating FMU's
"""

using Test

include("tests.jl")
include("fmi-cross-check-tests.jl")

@testset "All Tests" begin
    """@testset "Simulating simple FMUs" begin
        @testset "Without events" begin
            @test testHelloFMI20World()
            @test testCauerLowPassAnalog()
        end;
        @testset "With events" begin
            @test testBouncingBall()
        end;
        @testset "Without events" begin
            @test testCauerLowPassAnalog()
        end;
    end;"""

    runFMICrossTests()
end;
