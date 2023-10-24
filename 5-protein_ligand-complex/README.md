- Ao se adicionar os íons no gromacs existe um erro que tem acontecido com certa frequência nos tutoriais
  "Fatal error:
  number of coordinates in coordinate file (complex_solv.gro, 33518)
  does not match topology (topol.top, 2636)"
  Para corrigir esse erro abra o arquivo topol.top, vá até a última linha e verifique se o valor de "SOL" condiz com o arquivo de solvatação de interesse (no caso complex_solv.gro). Verifique também se o mesmo está devidamente formatado com o devido número de espaços e sem repetir os valores.
