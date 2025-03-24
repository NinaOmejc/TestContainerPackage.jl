using JSON


function modify_json(input_filename=normpath(joinpath(@__DIR__, "..", "data", "input.json")), 
                     output_filename=normpath(joinpath(@__DIR__, "..", "data", "output.json")))
    
    input_data = JSON.parsefile(input_filename)
    println("Read from JSON:", input_data)
    output_data = Dict("message" => "Hello from Julia!", "original" => input_data)

    open(output_filename, "w") do io
        JSON.print(io, output_data, 2)  # Pretty-print JSON with 2 spaces
    end
    println("Saved $(output_filename)")
end


function add_numbers(a, b)
    return a + b
end