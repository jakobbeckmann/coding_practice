using Test

@testset "Chapter 1" begin
  @testset "Exercise 1" begin
    using julia.Chapter1.Ex1
    @test has_unique_chars("abcdefghijk")
    @test has_unique_chars("abcpkljse")
    @test !has_unique_chars("abcabc")
    @test !has_unique_chars("aaopffdvfdf")
    @test !has_unique_chars("ploidskl")
    @test has_unique_chars("qwertyuiopasdfghjklzxcvbnm,./[];'\\\"")
    @test !has_unique_chars("?qwertyuiopasdfghjklzxcvbnm,./[]?;'\\\"")

    @test has_unique_chars_fast("abcdefghijk")
    @test has_unique_chars_fast("abcpkljse")
    @test !has_unique_chars_fast("abcabc")
    @test !has_unique_chars_fast("aaopffdvfdf")
    @test !has_unique_chars_fast("ploidskl")
    @test has_unique_chars_fast("qwertyuiopasdfghjklzxcvbnm,./[];'\\\"")
    @test !has_unique_chars_fast("?qwertyuiopasdfghjklzxcvbnm,./[]?;'\\\"")
  end

  @testset "Exercise 2" begin
    using julia.Chapter1.Ex2
    @test reverse_c_str("hello0") == "olleh0"
    @test reverse_c_str("asfsa0") == "asfsa0"
    @test reverse_c_str("0") == "0"
    @test reverse_c_str("this is a sentence!0") == "!ecnetnes a si siht0"
  end

  @testset "Exercise 3" begin
    using julia.Chapter1.Ex3
    @test remove_dup_chars("aaaaaaaa") == "a"
    @test remove_dup_chars("abcd") == "abcd"
    @test remove_dup_chars("") == ""
    @test remove_dup_chars("ababababababaaa") == "ab"
    @test remove_dup_chars("aaaaaabbbbbb") == "ab"

    @test remove_dup_chars_custom("aaaaaaaa") == "a"
    @test remove_dup_chars_custom("abcd") == "abcd"
    @test remove_dup_chars_custom("") == ""
    @test remove_dup_chars_custom("ababababababaaa") == "ab"
    @test remove_dup_chars_custom("aaaaaabbbbbb") == "ab"
  end

  @testset "Exercise 4" begin
    using julia.Chapter1.Ex4
    @test are_anagrams("aabb", "abab")
    @test are_anagrams("beckmann", "nanbeckm")
    @test !are_anagrams("beckmann", "nabeckm")
    @test !are_anagrams("ajkob", "ajkop")
  end

  @testset "Exercise 5" begin
    using julia.Chapter1.Ex5
    @test replace_spaces("hello world") == "hello%20world"
    @test replace_spaces("hello") == "hello"
    @test replace_spaces("farm ville sucks") == "farm%20ville%20sucks"
    @test replace_spaces("end ") == "end%20"
    @test replace_spaces(" start") == "%20start"
  end

  @testset "Exercise 6" begin
    using julia.Chapter1.Ex6
    matrix = [ 1  2  3  4;
               5  6  7  8;
               9 10 11 12;
              13 14 15 16]
    rotate!(matrix)
    @test matrix == [13  9  5  1;
                     14 10  6  2;
                     15 11  7  3;
                     16 12  8  4]

    matrix = [1 2 3;
              4 5 6;
              7 8 9]
    rotate!(matrix)
    @test matrix == [7 4 1;
                     8 5 2;
                     9 6 3]

    matrix = [1 2 2 2 1;
              1 2 2 2 1;
              1 2 2 2 1;
              1 2 2 2 1;
              1 2 2 2 1]
    rotate!(matrix)
    @test matrix == [1 1 1 1 1;
                     2 2 2 2 2;
                     2 2 2 2 2;
                     2 2 2 2 2;
                     1 1 1 1 1]
  end
end
