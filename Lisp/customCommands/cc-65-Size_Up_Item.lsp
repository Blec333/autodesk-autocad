;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Size_Up_Item ()
;;;; SU = SIZE UP Increase Fitting size by one index location
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "rem THIS INCREMENTS UP" writeToVBCode)
(write-line "if item.hasproduct then" writeToVBCode)
(write-line "dim entry" writeToVBCode)
(write-line "dim desc=item.description" writeToVBCode)
(write-line "for entry=1 to item.product.entries" writeToVBCode)
(write-line "if desc=item.product.entry[entry].name then" writeToVBCode)
(write-line "dim index=entry+1" writeToVBCode)
(write-line "if entry < item.product.entries then" writeToVBCode)
(write-line "dim entry=item.product.entries" writeToVBCode)
(write-line "item.description=item.product.entry[index].name" writeToVBCode)
(write-line "endif" writeToVBCode)
(write-line "endif" writeToVBCode)
(write-line "next" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.hasproduct=false then" writeToVBCode)
(write-line "if item.dim[1].value <= 11 and item.CID <> 818 then" writeToVBCode)
(write-line "if (item.CID = 40 or item.CID = 522 or item.CID = 523 or item.CID = 873 or item.CID = 856 or item.CID = 68 or item.CID = 1112 or item.CID = 51 or item.CID = 61) or (wildcard(item.filename,\"*Flat Strap (Round)\") = 1) or (wildcard(item.filename,\"*Wrap Round\") = 1) or (wildcard(item.filename,\"*round floor mount\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 1" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (item.CID = 866 or item.CID = 802 or item.CID = 30 or item.CID = 535 or item.CID = 382 or item.CID = 1 or item.CID = 505 or item.CID = 166) or (wildcard(item.filename,\"*rectangular floor mount\") = 1) or (wildcard(item.filename,\"*Flat Strap (Rectangle)\") = 1) or (wildcard(item.filename,\"*rectangular bearer\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 1" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 1" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 20 or item.CID = 17 or item.CID = 8 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 1" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 1" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].numvalue + 1" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 330 or item.CID = 2 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 1" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 1" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value + 1" writeToVBCode)
(write-line "item.dim[4].value = item.dim[4].value + 1" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dim[1].value > 11 and item.CID <> 818 then" writeToVBCode)
(write-line "if (item.CID = 40 or item.CID = 522 or item.CID = 523 or item.CID = 873 or item.CID = 856 or item.CID = 68 or item.CID = 1112 or item.CID = 51 or item.CID = 61) or (wildcard(item.filename,\"*Flat Strap (Round)\") = 1) or (wildcard(item.filename,\"*Wrap Round\") = 1) or (wildcard(item.filename,\"*round floor mount\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif (item.CID = 866 or item.CID = 802 or item.CID = 30 or item.CID = 535 or item.CID = 382 or item.CID = 1 or item.CID = 505 or item.CID = 166) or (wildcard(item.filename,\"*rectangular floor mount\") = 1) or (wildcard(item.filename,\"*Flat Strap (Rectangle)\") = 1) or (wildcard(item.filename,\"*rectangular bearer\") = 1) then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 20 or item.CID = 17 or item.CID = 8 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 2" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].numvalue + 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "elseif item.CID = 330 or item.CID = 2 then" writeToVBCode)
(write-line "item.dim[1].value = item.dim[1].value + 2" writeToVBCode)
(write-line "item.dim[2].value = item.dim[2].value + 2" writeToVBCode)
(write-line "item.dim[3].value = item.dim[3].value + 2" writeToVBCode)
(write-line "item.dim[4].value = item.dim[4].numvalue + 2" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.CID = 818 then" writeToVBCode)
(write-line "item.dim[\"Branch Width #1\"].value = item.dim[\"Branch Width #1\"].value + 2" writeToVBCode)
(write-line "item.dim[\"Branch Depth #1\"].value = item.dim[\"Branch Depth #1\"].value + 2" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "item.update()" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "endwhile" writeToVBCode)
(close writeToVBCode)
(Executescript vbCode)
(vl-file-delete vbCode)
(princ)
(END_ROUTINE));end defun