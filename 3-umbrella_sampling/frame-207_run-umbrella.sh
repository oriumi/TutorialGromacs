#!/bin/bash

# Short equilibration
gmx grompp -f npt_umbrella.mdp -c conf207.gro -r conf207.gro -p topol.top -n index.ndx -o npt207.tpr -maxwarn 100
gmx mdrun -deffnm npt207

# Umbrella run
gmx grompp -f md_umbrella.mdp -c npt207.gro -r npt207.gro -t npt207.cpt -p topol.top -n index.ndx -o umbrella207.tpr -maxwarn 100
gmx mdrun -deffnm umbrella207


