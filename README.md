# tfground
pj's terraform playground

Multiple Ways to Autheticate 
1. Using gcloud auth application default login on VS Code
2. Using Cloud Shell 
3. Using a service a/c - create an account, create key, download key, put in the same folder as ./main.tf. Export an environment variable or you can define a Terraform variable. 
    export GOOGLE_CLOUD_KEYFILE_JSON="$(pwd)/tf-samplekeyFile.json"
    cat `echo ${GOOGLE_CLOUD_KEYFILE_JSON}`
4. If credentials variable is configured in main.tf OR environment variable is set up at the prompt as in steps 8.3.1 - it would override pjoura@

## Steps to Check-In new code , git commands
NOTE: Here vpcsc-fr1 is the feature branch name
0.  Ensure your feature branch is checked out git checkout <brancg-name> 
1.  Make the edits you would like
2.  git status
3.  git add . 
4.  git status 
5.  git commit -m "comment a message" -- This will commit the code to your branch local copy only
6.  git push origin vpcsc-fr1 -- This will push the code to feature branch remote server
7.  git checkout main -- This is required to merge the feature branch to main
8.  git merge vpcsc-fr1 -- This will merge (link) feature branch to main branch
9.  < Now your Feature Branch and Main branch are out of sync on remote server>
10. git push origin main -- This will sync the code between the 2 branches on the remote server%  
## Steps to update the code in braches
0. Checkout you local branch, let's say FeatureBranch
1. update your file, git add. , git commmit -m "give some comment"
2. Test your code, if its good - git push origin FeatureBranch

Now your code is in sync on FeatureBranch locally and remote FeatureBranch. Here you have 3 options
A. On github web, open a PR request and merge to main. Doing so will bring Main to same level as FeatureBranch. But now your local main and Remote main are out-of-sync. If you want them in sync, you need to git checkout main ( locally), git fetch origin main, git merge origin/main (this is recommended when working in teams)
B. Instead of doing openning a PR on Github Web, you can first merge the code to local main and then push it to remote main. Commands: locally: git checkout main, git merge FeatureBrach, git push origin main. Thiis is useful when working individually & not in teams
C. When working in teams, another developer might need to test the code in their local branch.
 Commands: git fetch origin , git checkout -b pr/FeatureBranch origin/FeatureBranch
 Gemini link: https://g.co/gemini/share/4cce337ffa29,https://g.co/gemini/share/e1db336b9527
## Testing DragonFly ##
Secret Key to TF Deploy service account for my Dragonfly is located here
❯ /home/pjoura/pjs_tfground
drwxr-xr-x 1 pjoura pjoura  206 May  3 23:55 tfground
-rw-r--r-- 1 pjoura pjoura 2353 May  4 00:00 tf-1-354422-key..json