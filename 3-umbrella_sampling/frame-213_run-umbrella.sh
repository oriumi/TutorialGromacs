#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf213.gro -r conf213.gro -p topol.top -n index.ndx -o npt213.tpr -maxwarn 100
gmx mdrun -deffnm npt213

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt213.gro -r npt213.gro -t npt213.cpt -p topol.top -n index.ndx -o umbrella213.tpr -maxwarn 100
gmx mdrun -deffnm umbrella213


