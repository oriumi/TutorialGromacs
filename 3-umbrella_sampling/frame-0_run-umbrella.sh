#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf0.gro -r conf0.gro -p topol.top -n index.ndx -o npt0.tpr -maxwarn 100
gmx mdrun -deffnm npt0

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt0.gro -r npt0.gro -t npt0.cpt -p topol.top -n index.ndx -o umbrella0.tpr -maxwarn 100
gmx mdrun -deffnm umbrella0


