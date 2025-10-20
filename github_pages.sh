#ACTIONS_ID_TOKEN_REQUEST_URL
# should we?
#

set -e -x

git branch -D gh-pages || true
git checkout --orphan gh-pages

for f in `find build/html -type f -regex '.*\.html$'` ; do
    sed -i $f\
        -r -e 's@(href="|src=")([\.\./]*)_static@\1\2static@g' \
        -e 's@href="_modules@href="modules@g' \
        -e 's@href="_sources@href="sources@g' \
        -e 's@src="_images@src="images@g'
done

rm -rf build/html/{static,modules,sources,images}
mv build/html/_static build/html/static
mv build/html/_modules build/html/modules
mv build/html/_sources build/html/sources
mv build/html/_images build/html/images

mv build/html docs

echo 'To edit switch to the dev branch' > README.txt

git add docs
git add -f docs/{static,modules,sources,images}
git commit -m "pages"

git push gh :gh-pages
git push gh gh-pages
git checkout dev
# git clean -fdx -e venv
