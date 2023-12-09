!#/bin/bash
# execute a shell inside the image jekyll and binds 
# the port on the computer to the one in the container, and binds the folder on the computer to the container
# to run the site, go into folder test, and enter: jekyll serve --host 0.0.0.0 so that it can be accessed from my browser
docker run -p 4000:4000  -v /Users/tinabruce/Documents/Programming/nejputin.se:/nejputin.se -ti jekyll