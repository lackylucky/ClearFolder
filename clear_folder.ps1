#Path to clear
$Path = "C:\test"

#Check that the variable isn't empty
if ($Path) { 
    #Check if the sourcepath exist
    if (Test-Path -Path $Path) {
        #Delete items and subfolders
        Get-ChildItem $Path | Remove-Item -Force -Recurse
    }else{
        echo "Path $Path doesn't exist"
    }

}else{
    echo "No path-variable set"
}
