# vagrant-dshell
###### A Vagrant environment for testing [dshell tool](https://github.com/USArmyResearchLab/Dshell)
------------------------------------------------------


For information in portuguese, read more at http://www.gris.dcc.ufrj.br/news/dshell-framework-de-analise-forense-de-rede

The files in this repository are part of a recipe for the use of DSHELL tool.

If you want to know more about the tool, read more at [official repo](https://github.com/USArmyResearchLab/Dshell).

If you want a quick installation in a controlled environment, you can use the [Vagrant](https://www.vagrantup.com/) and [Virtualbox](https://www.virtualbox.org/) for this in conjunction with scripts in this repository.

Follow the steps below:

1. Make a project clone (or download the zip version at [here](https://github.com/grisufrj/vagrant-dshell/archive/master.zip)) on your computer.

2. Enter the directory and run `vagrant up` and soon after `vagrant ssh`.

3. On the virtual machine, run `./dshell`


Tip: if you want to copy PCAPs files for the virtual machine, just copy them into the folder where you ran `vagrant up` that they will be within the `/vagrant` folder on the virtual machine.
