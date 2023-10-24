#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf491.gro -r conf491.gro -p topol.top -n index.ndx -o npt491.tpr -maxwarn 100
gmx mdrun -deffnm npt491

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt491.gro -r npt491.gro -t npt491.cpt -p topol.top -n index.ndx -o umbrella491.tpr -maxwarn 100
gmx mdrun -deffnm umbrella491


