#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf402.gro -r conf402.gro -p topol.top -n index.ndx -o npt402.tpr -maxwarn 100
gmx mdrun -deffnm npt402

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt402.gro -r npt402.gro -t npt402.cpt -p topol.top -n index.ndx -o umbrella402.tpr -maxwarn 100
gmx mdrun -deffnm umbrella402


