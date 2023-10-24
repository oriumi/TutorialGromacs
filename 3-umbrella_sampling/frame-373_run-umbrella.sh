#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf373.gro -r conf373.gro -p topol.top -n index.ndx -o npt373.tpr -maxwarn 100
gmx mdrun -deffnm npt373

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt373.gro -r npt373.gro -t npt373.cpt -p topol.top -n index.ndx -o umbrella373.tpr -maxwarn 100
gmx mdrun -deffnm umbrella373


