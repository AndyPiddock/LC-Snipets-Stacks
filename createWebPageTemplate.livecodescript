script "createWebPageTemplate"

function buildHtmlPage pDescription, pAuthor, pIconPNG, pCSS, pJS, pTitle
   
   --construct a basic html page with place holders for 
   --more html and javascript to be incorporated
   --parameters:-
   --pDescription : meta tag, page description
   --pAuthor : meta tag, author
   --pIconPNG : link to url bar icon
   --pCSS : link to css file
   --pJS : link to javascript file
   --pTitle : page title
   
   put "<!DOCTYPE html>" & CR into tTemplate
   put "<html>" & CR after tTemplate
   put "<head>" & CR after tTemplate
   put "<meta charset=" &quote& "utf-8" &quote& ">" &  CR after tTemplate
   put "<meta name=" &quote& "description" &quote&& "content=" &quote& pDescription &quote& ">" & CR after tTemplate
   put "<meta name=" &quote& "author" &quote&& "content=" &quote& pAuthor &quote& ">" & CR after tTemplate
   put "<link rel=" &quote& "icon" &quote&& "href=" &quote& pIconPNG &quote& ">" & CR after tTemplate
   put "<link rel=" &quote& "stylesheet" &quote&& "href=" &quote& pCSS &quote& ">" & CR after tTemplate
   put "<script type=" &quote& "text/javascript" &quote&& "src=" &quote& pJS &quote& ">" & "</script>" & CR after tTemplate
   put "<title>" & pTitle & "</title>" & CR after tTemplate
   put CR & "<!-- your HEAD content here... -->" & CR after tTemplate
   put "<LC-Head-Content>" & CR & CR after tTemplate
   put "</head>" & CR after tTemplate
   put "<body>" & CR after tTemplate
   put CR & "<!-- your BODY content here... -->" & CR after tTemplate
   put "<LC-Body-Content>" & CR & CR after tTemplate
   put "</body>" & CR after tTemplate
   put "</html>" & CR after tTemplate
   
   --example for output
   put tTemplate into fld "FldTemplate"
   
end buildHtmlPage

--usage example
--populate parameters for the template page builder
   put fld "FldTitle" into tTitle
   put fld "FldDescription" into tDescription
   put fld "FldAuthor" into tAuthor
   put "/favicon.ico" into tIconPNG
   put "/css/styles.css" into tCSS
   put "/scripts/main.js" into tJS
   
   --build the html template page
   get buildHtmlPage(tDescription, tAuthor, tIconPNG, tCSS, tJS, tTitle)
