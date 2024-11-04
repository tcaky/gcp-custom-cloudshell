FROM gcr.io/cloudshell-images/cloudshell:latest
WORKDIR /tmp/build
RUN apt -y install zsh virtualenvwrapper zsh-syntax-highlighting ttf-ancient-fonts fonts-powerline pass
RUN wget https://github.com/git-ecosystem/git-credential-manager/releases/download/v2.6.0/gcm-linux_amd64.2.6.0.deb
RUN sudo dpkg -i gcm-linux_amd64.2.6.0.deb


#RUN sudo apt -q update
#RUN sudo apt -q install zsh virtualenvwrapper zsh-syntax-highlighting ttf-ancient-fonts fonts-powerline -y

# Add your content here

# To trigger a rebuild of your Cloud Shell image:
# 1. Commit your changes locally: git commit -a
# 2. Push your changes upstream: git push origin master

# This triggers a rebuild of your image hosted at gcr.io/php-configconnector/gcp_custom_cloudshell.
# You can find the Cloud Source Repository hosting this file at https://source.developers.google.com/p/php-configconnector/r/gcp_custom_cloudshell

# From this GIST: https://gist.github.com/zombiezen/d24fbe7d59d56f61b762ec1435699df2
#RUN (type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
#	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
#	&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
#	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
#	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
#	&& sudo apt update \
#	&& sudo apt install gh -y

#RUN sudo mkdir -p -m 755 /etc/apt/keyrings
# RUN sudo wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg -P /etc/apt/keyrings
#RUN sudo curl https://cli.github.com/packages/githubcli-archive-keyring.gpg --output /etc/apt/keyrings/githubcli-archive-keyring.gpg
# RUN sudo ls -l /etc/apt/keyrings/githubcli-archive-keyring.gpg
#RUN sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg

#RUN sudo mkdir -p -m 755 /etc/apt/sources.list.d
#RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
# RUN sudo cat /etc/apt/sources.list.d/github-cli.list

# RUN sudo apt -q install gh

# sudo su
# usermod -s /bin/zsh [your_user]