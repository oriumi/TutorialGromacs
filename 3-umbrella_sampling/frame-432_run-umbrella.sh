#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf432.gro -r conf432.gro -p topol.top -n index.ndx -o npt432.tpr -maxwarn 100
gmx mdrun -deffnm npt432

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt432.gro -r npt432.gro -t npt432.cpt -p topol.top -n index.ndx -o umbrella432.tpr -maxwarn 100
gmx mdrun -deffnm umbrella432


