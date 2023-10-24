#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf195.gro -r conf195.gro -p topol.top -n index.ndx -o npt195.tpr -maxwarn 100
gmx mdrun -deffnm npt195

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt195.gro -r npt195.gro -t npt195.cpt -p topol.top -n index.ndx -o umbrella195.tpr -maxwarn 100
gmx mdrun -deffnm umbrella195


