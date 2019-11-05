using Test

include("subarray.jl")

# Tests adapted from `problem-specifications//canonical-data.json` @ v1.1.0

println("\n"^2, "-"^60, "\n"^3)

@testset "Empty arrays." begin
    @test subarray([], []) == EQUAL
end
println()

@testset "Empty array within non empty array." begin
    @test subarray([], [1, 2, 3]) == SUBARRAY
end
println()

@testset "Non-empty array contains empty array." begin
    @test subarray([1, 2, 3], []) == SUPERARRAY
end
println()

@testset "Array equals itself." begin
    @test subarray([1, 2, 3], [1, 2, 3]) == EQUAL
end
println()

@testset "Different arrays." begin
    @test subarray([1, 2, 3], [2, 3, 4]) == UNEQUAL
end
println()

@testset "False start." begin
    @test subarray([1, 2, 5], [0, 1, 2, 3, 1, 2, 5, 6]) == SUBARRAY
end
println()

@testset "Consecutive." begin
    @test subarray([1, 1, 2], [0, 1, 1, 1, 2, 1, 2]) == SUBARRAY
end
println()

@testset "Subarray at start." begin
    @test subarray([0, 1, 2], [0, 1, 2, 3, 4, 5]) == SUBARRAY
end
println()

@testset "Subarray in middle." begin
    @test subarray([2, 3, 4], [0, 1, 2, 3, 4, 5]) == SUBARRAY
end
println()

@testset "Subarray at end." begin
    @test subarray([3, 4, 5], [0, 1, 2, 3, 4, 5]) == SUBARRAY
end
println()

@testset "At start of superarray." begin
    @test subarray([0, 1, 2, 3, 4, 5], [0, 1, 2]) == SUPERARRAY
end
println()

@testset "In middle of superarray." begin
    @test subarray([0, 1, 2, 3, 4, 5], [2, 3]) == SUPERARRAY
end
println()

@testset "At end of superarray." begin
    @test subarray([0, 1, 2, 3, 4, 5], [3, 4, 5]) == SUPERARRAY
end
println()

@testset "First array missing element from second array." begin
    @test subarray([1, 3], [1, 2, 3]) == UNEQUAL
end
println()

@testset "Second array missing element from first array." begin
    @test subarray([1, 2, 3], [1, 3]) == UNEQUAL
end
println()

@testset "Order matters to a array." begin
    @test subarray([1, 2, 3], [3, 2, 1]) == UNEQUAL
end
println()

@testset "Same digits but different numbers." begin
    @test subarray([1, 0, 1], [10, 1]) == UNEQUAL
end
println()

# Additional tests for this track
@testset "Unique return values." begin
    @test length(Set([SUBARRAY, SUPERARRAY, EQUAL, UNEQUAL])) == 4
end
println()

@testset "Inner spaces." begin
    @test subarray(["a c"], ["a", "c"]) == UNEQUAL
end
println()

@testset "Large arrays." begin
    arr₁ = [j    for i = 1 : 1000    for j = 0 : 999]
    for i = 1000 : 1099
        push!(arr₁, i)
    end
    arr₂ = [i    for i = 900 : 1049]
    @test subarray(arr₁, arr₂) == SUPERARRAY
end
println()


@testset "Spread subarray." begin
    arr₁ = [i    for i  = 3 : 199 : 3]
    arr₂ = [i    for i = 15 : 199: 15]
    @test subarray(arr₁, arr₂) == UNEQUAL
end
println()
