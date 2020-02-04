# Defined in /var/folders/g9/rzw3q2nd4zqf5sb00_34vkn5x73zhf/T//fish.FGV4Lj/rm-nvim-plugin.fish @ line 2
function rm-nvim-plugin --description 'Remove an nvim plugin' --argument PLUGIN_NAME
	cd ~/.config
	git submodule deinit nvim/pack/epurcell/start/$PLUGIN_NAME
	git rm nvim/pack/epurcell/start/$PLUGIN_NAME
	rm -Rf .git/modules/nvim/pack/epurcell/start/$PLUGIN_NAME
	git commit -m "Removing $PLUGIN_NAME from nvim setup"
	git push
	cd -
end
