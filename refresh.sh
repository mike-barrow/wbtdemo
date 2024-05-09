#!/bin/bash -li
#don't forget to run: flutter build web --release
(cd ../ann_arbor_staging_app; flutter build web --release)
cp ../ann_arbor_staging_app/build/web/* . -r
#delete base href according to: https://medium.com/@aravinthc18/hosting-a-flutter-web-project-on-github-pages-473474bd0c6f
grep -v "<base href=\"/\">" index.html > filename2; mv filename2 index.html
#now ready to push to github
