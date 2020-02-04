# Defined in /var/folders/g9/rzw3q2nd4zqf5sb00_34vkn5x73zhf/T//fish.CySkDX/add-nvim-plugin.fish @ line 2
function add-nvim-plugin --description 'Add a plugin to the my base vim package' --argument GIT_URL
	if test -z $GIT_URL
		echo Usage: add-nvim-plugin git-url
	end
	cd $HOME/.config
	set -l REPO_NAME (string split -m 1 -r '.' (string split -m 1 -r '/' $GIT_URL)[2])[1]
	git submodule add $GIT_URL nvim/pack/epurcell/start/$REPO_NAME
	git add .gitmodules nvim/pack/epurcell/start/$REPO_NAME
	git commit -m "Added plugin $REPO_NAME to personal nvim package"
	cd -
end
