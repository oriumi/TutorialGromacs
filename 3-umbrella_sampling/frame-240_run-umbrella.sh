#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf240.gro -r conf240.gro -p topol.top -n index.ndx -o npt240.tpr -maxwarn 100
gmx mdrun -deffnm npt240

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt240.gro -r npt240.gro -t npt240.cpt -p topol.top -n index.ndx -o umbrella240.tpr -maxwarn 100
gmx mdrun -deffnm umbrella240


