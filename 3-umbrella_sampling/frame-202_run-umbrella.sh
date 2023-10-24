#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf202.gro -r conf202.gro -p topol.top -n index.ndx -o npt202.tpr -maxwarn 100
gmx mdrun -deffnm npt202

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt202.gro -r npt202.gro -t npt202.cpt -p topol.top -n index.ndx -o umbrella202.tpr -maxwarn 100
gmx mdrun -deffnm umbrella202


