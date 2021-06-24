echo "Cloning destination git repository"
# Setup git
git config --global user.email "lars.buntemeyer@hzg.de"
git config --global user.name "larsbuntemeyer"
git clone "https://larsbuntemeyer:$API_TOKEN_GITHUB@github.com/euro-cordex/esgf-table"
ls -la tables
mv euro-cordex-esgf.* esgf-table/
cd esgf-table
git status
git commit -am"update of euro-cordex simulation table"
git push origin master
