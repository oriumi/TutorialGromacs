#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf219.gro -r conf219.gro -p topol.top -n index.ndx -o npt219.tpr -maxwarn 100
gmx mdrun -deffnm npt219

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt219.gro -r npt219.gro -t npt219.cpt -p topol.top -n index.ndx -o umbrella219.tpr -maxwarn 100
gmx mdrun -deffnm umbrella219


