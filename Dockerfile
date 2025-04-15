# Start with FROM instruction. The "base image" to start from. In this case, we'll use the latest LTS version: node:18
# Next add the COPY command. This commande tells Docker where to find source files and where to put them in the image.
# Add WORKDIR to specifiy the working directory. A little like cd in unix, WORKDIR changes the directior. Since we copied everything into this directory, this is now the "root" of our project.
# Create a RUN command that should run while your image builds. RUN runs a commant (while building the image). In our case, we want to tell docket to install npm packages.
# Unlike RUN, CMD runs a command after the image is built, once we run the container. As with this project, CMD is typically a start command.

FROM node:18
COPY . /app
WORKDIR /app
RUN npm install
CMD [ "npm", "start" ]
