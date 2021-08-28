script "getStackFilePath"
--get the currents stacks file path

function getBaseURL
  set the itemdel to slash
  return item 1 to - 2 of ( the effective filename of me)
end getBaseURL

--usage example
on openStack
    answer getBaseURL()  
end openStack
