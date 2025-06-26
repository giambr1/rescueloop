# rescueloop
short test on "self-rescuing" with ansible

Running `ansible-playbook setup.yml` will result in a loop since it tries to copy a file that does not exist\
Instead, `./test.sh` runs `setup.yml` and after 3s it generates the file, `ehi.txt`, that the playbook is trying to copy to `ehl.txt` so that the loop is broken.\
When `./test.sh` is done, `ehi.txt` and `ehl.txt` should be present in the folder.
