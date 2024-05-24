echo "config git now ...."
git config --global user.name frozenfisher
git config --global user.email frozenfish2077@gmail.com


echo "creat ssh ......"
ssh-keygen -t ed25519 -N ""  -C "Git SSH Key" -f ~/.ssh/id_ed25519
echo "==============="
echo "cat pub"

cat ~/.ssh/id_ed25519.pub

echo "wait ......."
echo "please print you will who"
read who
echo "ok,  you use $who!!!"
if [ "$who" = "gitee" ];then
	echo $who
	ssh -T git@gitee.com
elif [ "$who" = "github" ];then
	ssh -T git@github.com
else 
	echo "fuk u !"
fi
