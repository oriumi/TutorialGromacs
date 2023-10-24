#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf185.gro -r conf185.gro -p topol.top -n index.ndx -o npt185.tpr -maxwarn 100
gmx mdrun -deffnm npt185

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt185.gro -r npt185.gro -t npt185.cpt -p topol.top -n index.ndx -o umbrella185.tpr -maxwarn 100
gmx mdrun -deffnm umbrella185


