# rescueloop
short test on "self-rescuing" with ansible

One needs to run `chmod +x test.sh` because I do not know how to make it executable in the pulled folder.

The playbook `setup.yml` includes `copy.yaml`. The latter is a task which tries to copy the file `ehi.txt` to `ehl.txt` and in case of failure includes `copy.yaml`. The file `ehi.txt` is not present in the folder so that running `ansible-playbook setup.yml` will result in an infinite loop.\
Instead, `./test.sh` runs `setup.yml` and after 3s it generates the file `ehi.txt` so that the loop is broken.\
When `./test.sh` is done, `ehi.txt` and `ehl.txt` should be present in the folder.
