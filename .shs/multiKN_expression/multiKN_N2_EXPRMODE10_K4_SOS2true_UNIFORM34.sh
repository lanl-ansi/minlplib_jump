#!/bin/bash
#SBATCH --job-name="multiKN_N2_EXPRMODE10_K4_SOS2true_UNIFORM34"
#SBATCH --output="C:\Users\bitja//Outputs/POD/multiKN_expression/multiKN_N2_EXPRMODE10_K4_SOS2true_UNIFORM34.out"
#SBATCH --constraint="cpu_model:E5-2660_v3"
#SBATCH --ntasks=1
#SBATCH --no-requeue
#SBATCH -t 3:00:00

julia C:\Users\bitja/start_gurobi.jl
lscpu
julia C:\Users\bitja\.julia\v0.6/POD_experiment/.jls/multiKN_expression/multiKN_N2_EXPRMODE10_K4_SOS2true_UNIFORM34.jl
