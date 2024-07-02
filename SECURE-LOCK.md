This command will make your lock screen completely impenetrable (replace main-account with your main github account username and public-repo with your public repo):
```cp -rf ~/.lock.sh ~/.secure.sh && sed -i 's/\"$1"/main-account/g; s/\"$4"/public-repo/g' ~/.secure.sh```
After running that command once, you have enabled the secure-lock command.
