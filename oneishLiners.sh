###print out all VCFs in a directory###
ls *.vcf.gz -m -Q
#'ls' lists all the contents in a directory 
#'*.vcf.gz' wildcard to only list files with the suffix .vcf.gz
#'-m' use a comma as a separator 
#'-Q' puts every entry in quotes


###touch every file in your scratch space to avoid the purge###
find . -exec touch {} \;
#'find .' finds all the contents within a directory and subdirectories
#'-exec' execute the commands following this option until ';' is encountered 
#'touch' changes the modification time of the given entry in '{}'
#'{}' an entry from find is replaced as a string in '{}' and has touch executed
#'\' escape the current entry and go to the next entry 
#';' closes out the executable 
