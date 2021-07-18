
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

