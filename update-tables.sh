echo "Cloning destination git repository"
# Setup git
git config --global user.email "lars.buntemeyer@hzg.de"
git config --global user.name "github action"
git clone "https://$API_TOKEN_GITHUB@github.com/euro-cordex/tables"
ls -la tables
mv euro-cordex-esgf.* tables/esgf
cd tables
git status
git commit -am"update of euro-cordex simulation table"
git push origin master
