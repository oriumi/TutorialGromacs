#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf359.gro -r conf359.gro -p topol.top -n index.ndx -o npt359.tpr -maxwarn 100
gmx mdrun -deffnm npt359

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt359.gro -r npt359.gro -t npt359.cpt -p topol.top -n index.ndx -o umbrella359.tpr -maxwarn 100
gmx mdrun -deffnm umbrella359


