

You should not commit changes to `.credentials.sh` file for obvious reasons.

Use the following command to enforce that:
```
git update-index --assume-unchanged dont-save/.credentials.sh
```

Or, you can assume the entire folder is `un-changed`:

```
git update-index --assume-unchanged dont-save/
```

If you want to push a change, issue this command and re-issue the above command again.
```
git update-index --no-assume-unchanged dont-save/.credentials.sh
```

It's always a good practice to perfor `git status` before any commit... 
Especially when you're in a hurry.
