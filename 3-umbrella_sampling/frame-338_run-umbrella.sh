#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf338.gro -r conf338.gro -p topol.top -n index.ndx -o npt338.tpr -maxwarn 100
gmx mdrun -deffnm npt338

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt338.gro -r npt338.gro -t npt338.cpt -p topol.top -n index.ndx -o umbrella338.tpr -maxwarn 100
gmx mdrun -deffnm umbrella338


