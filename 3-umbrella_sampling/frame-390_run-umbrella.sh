#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf390.gro -r conf390.gro -p topol.top -n index.ndx -o npt390.tpr -maxwarn 100
gmx mdrun -deffnm npt390

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt390.gro -r npt390.gro -t npt390.cpt -p topol.top -n index.ndx -o umbrella390.tpr -maxwarn 100
gmx mdrun -deffnm umbrella390


