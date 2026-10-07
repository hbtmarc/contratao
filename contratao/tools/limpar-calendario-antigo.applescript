-- Plano Contrato — limpeza segura da importação antiga
-- Remove somente eventos cujo título começa com "Estudo —" no calendário escolhido.
-- Nada é apagado antes de uma confirmação explícita.

tell application "Calendar"
    set calendarNames to name of every calendar
end tell

set picked to choose from list calendarNames with title "Plano Contrato — Limpeza" with prompt "Escolha o calendário onde o .ics antigo foi importado:" without multiple selections allowed and empty selection allowed
if picked is false then return
set chosenName to item 1 of picked

tell application "Calendar"
    set targetCalendar to calendar chosenName
    set matchedEvents to every event of targetCalendar whose summary starts with "Estudo —"
    set matchCount to count of matchedEvents
end tell

if matchCount is 0 then
    display dialog "Nenhum evento começando com ‘Estudo —’ foi encontrado em “" & chosenName & "”." buttons {"OK"} default button "OK" with icon note
    return
end if

set confirmResult to display dialog ("Foram encontrados " & matchCount & " eventos antigos em “" & chosenName & "”.\n\nDeseja apagar somente esses eventos?") buttons {"Cancelar", "Apagar eventos"} default button "Cancelar" with icon caution
if button returned of confirmResult is not "Apagar eventos" then return

tell application "Calendar"
    tell targetCalendar
        repeat with i from matchCount to 1 by -1
            delete item i of matchedEvents
        end repeat
    end tell
end tell

display dialog (matchCount & " eventos antigos foram removidos de “" & chosenName & "”.") buttons {"OK"} default button "OK" with icon note
