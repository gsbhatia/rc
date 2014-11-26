fu! ExecVimFile(file_name)
	"echo "Finding file -> "a:file_name" "
	if filereadable(a:file_name)
		"echo "Found file -> "a:file_name""
		"echo "Sourcing file -> "a:file_name""
		exec ":source " . " " a:file_name" "
	else
		"echo "Couldn't find file -> "a:file_name"" 
	endif
endfunction

"let file_name = "/usr/share/vim/google/google.vim"
"call ExecVimFile(file_name)

let file_name = $HOME."/Lab/github/rc/common.vimrc"
call ExecVimFile(file_name)
