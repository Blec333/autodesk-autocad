;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    c:Fix_Variables
|;


(vl-load-com)
(setvar 'cmdecho 0)
(vl-load-all "C:/Users/%USERNAME/AMC/BIM - Docs/_Management/AMC Software Management/AutoCAD/Custom Programs/LSPs/LCC.lsp")
(GIVE_ME_STARTUP_CODE)
(Delete_TextDummy_Layer&Items)
(c:Fix_Variables)
(terpri)
(princ "ACADDoc Loaded")(terpri)
(princ)
