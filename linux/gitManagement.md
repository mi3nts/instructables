
# Ignoring Large Files

- Option 1
```
  git rm --cached path/to/your/big/file
  git commit --amend -CHEAD
  git push
```
- Option 2
Takes care of many commits  
```
git lfs migrate import --include="*.csv"
```

## Removing Pre Commited Files 
Initially add the file to the .gitigore file  

```
git rm -r --cached .
git add .
git commit -m ".gitignore fix"
```
