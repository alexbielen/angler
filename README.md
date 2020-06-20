# Angler 

Catch the correct packages!

## Why use Angler?
Angler helps you install and manage specific versions of fish packages.



### Add a package
```
# get the latest released version
angler add laughadelic/pisces


# get the version at a specific commit-ish
angler add laughadelic/pisces@v0.5.0
angler add laughadelic/piscles@b4b415527a951925f8c3bf4bba151d5df4b7d837
```

### Remove a package
```
angler rm laughadelic/pisces
```


### List all packages and current versions or all generations 
```
angler ls

# list 
angler ls generations
```

### Rollback
```
# rollback to the most recent generation
angler rollback

# rollback to a specific generation
angler rollback 3
```






