#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf176.gro -r conf176.gro -p topol.top -n index.ndx -o npt176.tpr -maxwarn 100
gmx mdrun -deffnm npt176

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt176.gro -r npt176.gro -t npt176.cpt -p topol.top -n index.ndx -o umbrella176.tpr -maxwarn 100
gmx mdrun -deffnm umbrella176


