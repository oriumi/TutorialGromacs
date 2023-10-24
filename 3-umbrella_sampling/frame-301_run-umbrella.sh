#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf301.gro -r conf301.gro -p topol.top -n index.ndx -o npt301.tpr -maxwarn 100
gmx mdrun -deffnm npt301

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt301.gro -r npt301.gro -t npt301.cpt -p topol.top -n index.ndx -o umbrella301.tpr -maxwarn 100
gmx mdrun -deffnm umbrella301


