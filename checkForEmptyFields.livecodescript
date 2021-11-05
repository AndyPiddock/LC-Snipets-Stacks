script "checkForEmptyFields"

function checkForEmptyFields pFieldName,pMessage
   
   --make sure fields that need to be filled , are!
   --provide an error message to the user
   --perameters:-
   --pFieldName : a field name
   --pMessage : a message to be displayed if field is empty
   
   if fld pFieldName is empty then
      answer pMessage
      return true
   end if
   
end checkForEmptyFields

--usage example
on mouseUp
 put checkForEmptyFields(FldTitle,"Please Enter a Title") into tResponse
   if tResponse is true then exit "mouseUp"
end mouseUp
