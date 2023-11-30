# Logging Standard outputs and Errors

- Logging just the errors
```
command-name 2> errors.txt
```

- Logging standard output and the errors to the same file 
```
command1 > everything.txt 2>&1
```


- Logging standard output and the errors to different files 
```
command1 > out.txt 2> err.txt
```

- Logging with append standard output and the errors to the same file 
```
command1 >> everything.txt 2>&1
```

Based on this [link](https://www.cyberciti.biz/faq/linux-redirect-error-output-to-file/)
