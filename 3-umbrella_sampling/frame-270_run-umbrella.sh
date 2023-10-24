#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf270.gro -r conf270.gro -p topol.top -n index.ndx -o npt270.tpr -maxwarn 100
gmx mdrun -deffnm npt270

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt270.gro -r npt270.gro -t npt270.cpt -p topol.top -n index.ndx -o umbrella270.tpr -maxwarn 100
gmx mdrun -deffnm umbrella270


