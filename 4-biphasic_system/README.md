1: Nesse tutorial é necessário alterar o arquivo vdwradii.dat que está na raiz da instalação do gromacs. Para acessar esse arquivo basta usar o caminho a seguir:

usr/local/gromacs/share/gromacs/top

Para fazer essa alteração é possível utilizando apenas o terminal através do comando 'cd ' e especificando o caminho acima. Ex: 'cd /usr/local/...'. Não é possível editar o arquivo sem ser um super user/admin, então use 'sudo su', digite a senha e edite o arquivo utilizando 'vim vdwradii.dat', 'nano vdwradii.dat' ou 'nvim vdwradii.dat'.

Um backup do arquivo original e o arquivo com a alteração estão salvos nesse tutorial.

2: Para adicionar água no sistema após a adição do peptídeo foi utilizado o comando 'gmx solvate -cp peptide_newbox.gro -cs chx_newbox.gro -o peptide_chx.gro'
