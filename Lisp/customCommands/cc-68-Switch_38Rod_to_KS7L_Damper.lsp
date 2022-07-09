;|
APPLOAD DEPENDENCIES TO INCLUDE

  UTILITIES:
    utilityFunctions.lsp

  COMMANDS:
    
|;

(defun c:Switch_38Rod_to_KS7L_Damper ()
;;;; KS7L = Switch Damper to KS7L
(OUTSIDE_LOOP_VARIABLES nil)
(write-line "requires task.selection" writeToVBCode)
(write-line "dim i = 1" writeToVBCode)
(write-line "dim qt = ASCII(34)" writeToVBCode)
(write-line "while i <= task.selection.count" writeToVBCode)
(write-line "dim item = task.selection[i]" writeToVBCode)
(write-line "if item.dampers > 0 then" writeToVBCode)
(write-line "if item.dampers = 1 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 2 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" or item.damper[2].value = \"3/8\"+qt+\" ROD-D2\" then" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 3 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" or item.damper[2].value = \"3/8\"+qt+\" ROD-D2\" then" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[3].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "elseif item.dampers = 4 then" writeToVBCode)
(write-line "if item.damper[1].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "elseif item.damper[1].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[1].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[1].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[2].value = \"3/8\"+qt+\" ROD-UP\" or item.damper[2].value = \"3/8\"+qt+\" ROD-DN\" or item.damper[2].value = \"3/8\"+qt+\" ROD-D2\" then" writeToVBCode)
(write-line "item.damper[2].value = \"KS7L-D2\"" writeToVBCode)
(write-line "item.damper[2].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[3].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "elseif item.damper[3].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[3].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[3].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "if item.damper[4].value = \"3/8\"+qt+\" ROD-UP\" then" writeToVBCode)
(write-line "item.damper[4].value = \"KS7L-UP\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "elseif item.damper[4].value = \"3/8\"+qt+\" ROD-DN\" then" writeToVBCode)
(write-line "item.damper[4].value = \"KS7L-DN\"" writeToVBCode)
(write-line "item.damper[4].locked = true" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "end if" writeToVBCode)
(write-line "i = i + 1" writeToVBCode)
(write-line "end while" writeToVBCode)
  (close writeToVBCode)
  (Executescript vbCode)
  (vl-file-delete vbCode)
  (princ)
(END_ROUTINE));end defun