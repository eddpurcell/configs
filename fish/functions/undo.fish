# Defined in /var/folders/g9/rzw3q2nd4zqf5sb00_34vkn5x73zhf/T//fish.lsHJP5/undo.fish @ line 2
function undo
	set --local cmd (string split --max 1 ' ' $history[1])[1]
	switch $cmd
		case mv
			set --local params (string split --max 3 --right ' ' $history[1])
			eval $params[1] $params[3] $params[2]
		case '*'
			echo "Can't undo $cmd commands"
	end
end
