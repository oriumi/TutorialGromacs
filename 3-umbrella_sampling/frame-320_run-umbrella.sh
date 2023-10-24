#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf320.gro -r conf320.gro -p topol.top -n index.ndx -o npt320.tpr -maxwarn 100
gmx mdrun -deffnm npt320

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt320.gro -r npt320.gro -t npt320.cpt -p topol.top -n index.ndx -o umbrella320.tpr -maxwarn 100
gmx mdrun -deffnm umbrella320


