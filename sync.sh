USER_HOME=/home

nvim_dir=.config/nvim
share_dir=.local/share/nvim
tmp_file=/tmp/.$USER.sync.sh

rm $tmp_file -rf 

for user_dir in `ls $USER_HOME`
do
	if [ "$user_dir" != "$USER" ]; then
		#echo $USER_HOME/$user_dir
		user_nvim_share_dir=$USER_HOME/$user_dir/$share_dir
		user_nvim_config_dir=$USER_HOME/$user_dir/$nvim_dir
		this_nvim_dir=$HOME/$nvim_dir
		(
		cat << EOF

sudo rm $user_nvim_config_dir $user_nvim_share_dir -rf;
sudo mkdir -p $user_nvim_config_dir;
sudo cp -rf $this_nvim_dir $user_nvim_config_dir/..;
sudo chown $user_dir $user_nvim_config_dir/.. -R
sudo chgrp $user_dir $user_nvim_config_dir/.. -R
EOF
) >> $tmp_file
	else
		echo ""
	fi
	#break
done

cat $tmp_file
