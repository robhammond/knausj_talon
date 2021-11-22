app: apple_terminal
-
# makes the commands in generic_terminal available
tag(): terminal 

# activates the implementation of the commands/functions in generic_terminal
tag(): user.generic_unix_shell

# makes commands for certain applications available
# you can deactivate them if you do not use the application
tag(): user.git
tag(): user.anaconda
tag(): user.kubectl

# TODO: explain
tag(): user.tabs
tag(): user.file_manager

suspend:
    key(ctrl-z)
resume:
    insert("fg")
    key(enter)

kill it: key(ctrl-c)
clear screen: key(cmd-k)
see dee: "cd "
see dee up: "cd ../"
see dee (dev|10): "cd ~/dev"
list: "ls\n"
list all: "ls -a\n"

# rabbitmq
connect rabbit: "kubectl exec -it searchviz-rabbit-0 -- bash\n"
connect rabbit (1|one): "kubectl exec -it searchviz-rabbit-1 -- bash\n"
stop rabbit: "rabbitmqctl stop_app\n"
reset rabbit: "rabbitmqctl reset\n"
start rabbit: "rabbitmqctl start_app\n"
rabbit port forward: "kubectl port-forward svc/searchviz-rabbit 15674:15672\n"

# mojolicious
minion job: "./script/seo_pad minion job -f "

# kubernetes
cube get pods default: "kubectl get pods -n default\n"
cube exec default: "kubectl exec -n default -it "

# node
node index: "node index.js"