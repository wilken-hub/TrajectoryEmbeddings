using JSON
using Serialization
using DelimitedFiles
using Distances
using Statistics, Distributions

include("utils.jl")

datapath = "/home/jupyter-guilherme.sales@in-71e1e/.conda/envs/t2vec/t2vec/data"

println("Reading data cels...")

prefix = "exp2"
#-------------------------------------------------------------------------
# Criando o arquivo contendo todas as cels do vocabulário:
lines1 = readlines("../data/train.src")# lendo o arquivo de treino
lines2 = readlines("../data/val.src")# lendo o arquivo de validacao
trajs = append!(lines1, lines2)

# Extrair elementos únicos (cada cel)
unique_cels = Set{Int}()
for traj in trajs
    clean_traj = replace(traj, "\0" => "")
    elements = parse.(Int, split(clean_traj))
    union!(unique_cels, elements)
end

println("Vocab size:", length(unique_cels))

# Salvando o vocab file (exp2-trj.t)! --> Cada linha do arquivo é uma cel do vocab!
write("../data/$prefix-trj.t", join(string.(unique_cels), "\n"))
println("exp2-trj.t file saved in ../data/")
println()
#---------------------------------------------------------------------------


# Criando os vetores usando t2vec: ($prefix == exp2)
checkpoint = joinpath(datapath, "best_model.pt")
t2vec = `python t2vec.py -mode 2 -vocab_size 18866 -checkpoint $checkpoint -prefix $prefix`
println(t2vec)
println()


## load vectors
#vecfile = joinpath(datapath, "$prefix-trj.h5")
#vecs = h5open(vecfile, "r") do f
#    read(f["layer3"])
#end




