#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf288.gro -r conf288.gro -p topol.top -n index.ndx -o npt288.tpr -maxwarn 100
gmx mdrun -deffnm npt288

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt288.gro -r npt288.gro -t npt288.cpt -p topol.top -n index.ndx -o umbrella288.tpr -maxwarn 100
gmx mdrun -deffnm umbrella288


