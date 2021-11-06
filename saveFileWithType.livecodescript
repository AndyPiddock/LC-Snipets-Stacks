script "saveFileWithType"

function saveFile pFileContents, pFileType 
   
   --saves content to a file
   --parameters:-
   --pFileContents : the contents of the file to be saved
   --pFileType : the default file extention type, eg html, csv, txt...
   
   ask file "Please choose where you want to save the file" with type pFileType
   if the result is not "cancel" then
      put it into tFileName
      --Ensure the file extension is html
      set the itemDel to "."
      if item 2 of tFileName is not pFileType then
         put pFileType into item 2 of tFileName
      end if
   end if 
   
   --Save the data out to file
   put pFileContents into URL ("file:" & tFileName)
   
end saveFile

--usage example
--save field contents to file with type txt
   put field "FldTemp" into tFileContents
   get saveFile (tFileContents, "txt")
