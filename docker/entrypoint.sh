cp /tmp/.ssh /root/.ssh -r
cp /tmp/.zshrc /root/.zshrc
cp /tmp/.tmux.conf /root/.tmux.conf
sed -i "s/console, file/file/" /opt/conda/lib/python3.6/site-packages/hydra/conf/hydra/job_logging/default.yaml
sed -i "s/%F{red}%M@%n%f/%F{blue}%M@%n%f/" /root/.zshrc
/usr/bin/zsh
