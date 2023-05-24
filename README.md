

You should not commit changes to `.credentials.sh` file for obvious reasons.

The following command enforces that:
```
git update-index --assume-unchanged dont-save/.credentials.sh
```

If you want to push a change, issue this command and re-issue the above command again.
```
git update-index --no-assume-unchanged dont-save/.credentials.sh
```