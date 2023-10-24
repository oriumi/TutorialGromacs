#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf485.gro -r conf485.gro -p topol.top -n index.ndx -o npt485.tpr -maxwarn 100
gmx mdrun -deffnm npt485

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt485.gro -r npt485.gro -t npt485.cpt -p topol.top -n index.ndx -o umbrella485.tpr -maxwarn 100
gmx mdrun -deffnm umbrella485


