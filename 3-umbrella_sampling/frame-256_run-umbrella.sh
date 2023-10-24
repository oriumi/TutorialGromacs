#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf256.gro -r conf256.gro -p topol.top -n index.ndx -o npt256.tpr -maxwarn 100
gmx mdrun -deffnm npt256

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt256.gro -r npt256.gro -t npt256.cpt -p topol.top -n index.ndx -o umbrella256.tpr -maxwarn 100
gmx mdrun -deffnm umbrella256


