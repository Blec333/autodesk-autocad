;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Hanger_Stretch_to_Section ()
  ;;;; HS = HANGER STRETCH
(setq hangers (ssget '((0 . "MAPS_SOLID"))))
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "select item.CID" writeToVBCode)
(write-line "case 838,902" writeToVBCode)
(write-line "rem Floor Supports =====================================================================================================" writeToVBCode)
(write-line "if (wildcard(item.filename,\"double rectangular floor mount\") = 1) and (wildcard(item.option[1].value, \"Double Profile Bearer 2\") = 1) then" writeToVBCode)
(write-line "dim depth = item.dim[2].value" writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\")" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = ((bottomElevation-floorLevel)+depth)" writeToVBCode)
(write-line "item.option[21].value = 0.5" writeToVBCode)
(write-line "item.dim[6].value = (0 - legLength)" writeToVBCode)
(write-line "item.dim[7].value = (0 - depth)" writeToVBCode)
(write-line "elseif (wildcard(item.filename,\"single rectangular floor mount\") = 1) and (wildcard(item.option[1].value, \"Profiled Bearer\") = 1) then" writeToVBCode)
(write-line "dim depth = item.dim[2].value" writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\")" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = ((bottomElevation-floorLevel)+depth)" writeToVBCode)
(write-line "item.option[21].value = 0 - 0.5" writeToVBCode)
(write-line "item.dim[6].value = (0 - legLength)" writeToVBCode)
(write-line "item.dim[7].value = (0 - 6)" writeToVBCode)
(write-line "elseif (wildcard(item.filename,\"*rectangular floor mount\") = 1) and (wildcard(item.option[1].value, \"Flat Strap Hanger\") = 1) then" writeToVBCode)
(write-line "dim depth = item.dim[2].value" writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\")" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = (bottomElevation-floorLevel)" writeToVBCode)
(write-line "item.option[12].value = 0.5" writeToVBCode)
(write-line "item.dim[3].value = (0 - legLength)" writeToVBCode)
(write-line "elseif (wildcard(item.filename,\"*round floor mount\") = 1) then" writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\") + (item.dim[1].value / 2)" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = (bottomElevation-floorLevel)" writeToVBCode)
(write-line "item.dim[4].value = 0" writeToVBCode)
(write-line "item.dim[4].value = (0-1)" writeToVBCode)
(write-line "item.dim[3].value = 0" writeToVBCode)
(write-line "item.dim[3].value = ((item.dim[3].value - (item.dim[1].value / 2)) - legLength)" writeToVBCode)
(write-line "elseif (wildcard(item.filename,\"*Floor Mount Angle\") = 1) then" writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\") + (item.dim[1].value / 2)" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = (bottomElevation-floorLevel)" writeToVBCode)
(write-line "item.dim[4].value = 0" writeToVBCode)
(write-line "item.dim[4].value = (0-1)" writeToVBCode)
(write-line "item.dim[3].value = 0" writeToVBCode)
(write-line "item.dim[3].value = ((item.dim[3].value - (item.dim[1].value / 2)) - legLength)" writeToVBCode)
(write-line (strcat "elseif (wildcard(item.filename,\"Floor Supports Post\") = 1) "
                        "or (wildcard(item.filename,\"Floor Supports Post Double\") = 1) "
                        "or (wildcard(item.filename,\"Floor Supports Post Round\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Post Single\") = 1) "
                        "or (wildcard(item.filename,\"Floor Supports Angle\") = 1) "
                        "or (wildcard(item.filename,\"Floor Supports Angle Double\") = 1) "
                        "or (wildcard(item.filename,\"Floor Supports Angle Round\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Angle Single\") = 1) then") writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\")" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = (bottomElevation-floorLevel)" writeToVBCode)
(write-line "item.dim[\"Distance to Floor [#159]\"].value = legLength" writeToVBCode)
(write-line (strcat "elseif (wildcard(item.filename,\"Floor Support Post\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Post Double\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Post Round\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Angle\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Angle Double\") = 1) "
                        "or (wildcard(item.filename,\"Floor Support Angle Round\") = 1) then") writeToVBCode)
(write-line "dim bottomElevation = item.endlocation(1,\"btm\")" writeToVBCode)
(write-line "dim floorLevel = item.level(\"floor\")" writeToVBCode)
(write-line "dim legLength = (bottomElevation-floorLevel)" writeToVBCode)
(write-line "item.dim[\"Distance to Floor[#159]\"].value = legLength" writeToVBCode)
(write-line "rem Hanger Support ====================================================================================================" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*trimble*\") = 0) and (wildcard(item.servicetype,\"*Hanger\") = 1) and (wildcard(item.filename,\"*Wrap Round\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"btm\") + item.dim[1].value" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[2].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*trimble*\") = 0) and (wildcard(item.servicetype,\"*Hanger\") = 1) and (wildcard(item.filename,\"*Strap Single\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"btm\") + item.dim[2].value" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[3].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*trimble*\") = 0) and (wildcard(item.servicetype,\"*Hanger\") = 1) and (wildcard(item.filename,\"*Flat Strap (Round)\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"btm\") + item.dim[1].value" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[2].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*trimble*\") = 0) and (wildcard(item.servicetype,\"*Hanger\") = 1) and (wildcard(item.filename,\"*Flat Strap (Rectangle)\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[3].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.service,\"*trimble*\") = 0) and (wildcard(item.servicetype,\"*Hanger\") = 1) and (wildcard(item.filename,\"*rectangular bearer\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[6].value = hangLength" writeToVBCode)
(write-line "rem Seismic Included Here =============================================================================================" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Double Rectangular Bearer\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"Distance To Deck\"].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Seismic Rectangular\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"Distance To Deck\"].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Seismic\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"Distance to Anchor Z Axis [INDEX#15]\"].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Round Duct or Pipe Seismic\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"Distance to Anchor Z Axis [#15]\"].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Equipment Seismic\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"[EDIT] VERTICAL DISTANCE [#15]\"].value = hangLength" writeToVBCode)
(write-line "elseif (wildcard(item.servicetype,\"*Seismic*\") = 1) and (wildcard(item.filename,\"Rectangular Duct Seismic\") = 1) then" writeToVBCode)
(write-line "dim topElevation = item.endlocation(1,\"top\")" writeToVBCode)
(write-line "dim soffitLevel = item.level(\"soffit\")" writeToVBCode)
(write-line "dim hangLength = (soffitLevel-topElevation)" writeToVBCode)
(write-line "item.dim[\"[EDIT] VERTICAL DISTANCE [#15]\"].value = hangLength" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end select" writeToVBCode)
  (close writeToVBCode)
  (command "pselect" hangers "")
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (prompt "All hangers have been stretched to their respective section heights.")(princ)
  
  (princ)
  (END_ROUTINE));end defun