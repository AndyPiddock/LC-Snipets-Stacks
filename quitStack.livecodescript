script "quitStack"
--standard catch all quit routine

on mouseDown
  lock messages
  --stop using stacks
  put the stacksInUse into myStacks
  
  repeat for each line myStack in myStacks
    stop using stack myStack
  end repeat
  
  -- stacks
  put the openStacks into myStacks
  --add stacks you want to be ignored in development mode
  put "message box,home,tool,Message Box,revTools,revMenubar" & comma & the short name of me into myDontClose
  
  repeat for each line myStack in myStacks
    if myStack is not among the items of myDontClose then close stack myStack
  end repeat
  
  --messages
  put the pendingmessages into myMsgs
  repeat for each line myMsg in myMsgs
    cancel item 1 of myMsg
  end repeat
  
  close me
  if the environment is not "development" then
    quit
  end if
end mouseDown
