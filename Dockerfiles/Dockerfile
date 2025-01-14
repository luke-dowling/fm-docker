
# ? every line in this code is called a layer
# container i am starting from, this exists on docker hub
FROM node:20

## you can also create a user with the command "RUN useradd -ms /bin/bash john"

# its not good to be the root user in your app
USER node
# node is a specific user on node

# if were going to have all of the files be added and used from the same directory, we can use "WORKDIR /home/node/code" this would mean the third arugement of copy could be .

COPY --chown=node index.js /home/node/code/index.js

# ADD -> the add command adds additional functionality but you can basically do the same plus more as copy

# the instructions, only when you run the file
CMD ["node", "/home/node/code/index.js"]