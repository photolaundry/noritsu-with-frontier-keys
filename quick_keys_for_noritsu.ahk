#Requires AutoHotkey v2.0
#SingleInstance

RotateCCW()
{
    If WinExist("Functions") {
        WinWaitClose("Functions",,0.1)
    }
    If not WinExist("Functions") {
        Send "{F1}"
    }
    If WinWaitActive("Functions") {
        SetControlDelay -1
        ControlClick "Top-Bottom Information Change", "Functions",,,, "NA"
    }
}

; yellow
a::Send "{F5}{F9}"
+a::Send "{F5}{F9}{F9}{F9}"
q::Send "{F5}{F10}"
+q::Send "{F5}{F10}{F10}{F10}"
; reset yellow
!a::Send "{F5}{F4}"
!q::Send "{F5}{F4}"

; magenta
s::Send "{F6}{F9}"
+s::Send "{F6}{F9}{F9}{F9}"
w::Send "{F6}{F10}"
+w::Send "{F6}{F10}{F10}{F10}"
; reset magenta
!s::Send "{F6}{F4}"
!w::Send "{F6}{F4}"
; copy magenta
^+s::Send "{F1}{F6}"
^+w::Send "{F1}{F6}"

; cyan
d::Send "{F7}{F9}"
+d::Send "{F7}{F9}{F9}{F9}"
e::Send "{F7}{F10}"
+e::Send "{F7}{F10}{F10}{F10}"
; reset cyan
!d::Send "{F7}{F4}"
!e::Send "{F7}{F4}"
; copy cyan
^+d::Send "{F1}{F7}"
^+e::Send "{F1}{F7}"

; density
f::Send "{F8}{F9}"
+f::Send "{F8}{F9}{F9}{F9}"
r::Send "{F8}{F10}"
+r::Send "{F8}{F10}{F10}{F10}"
; reset density
!r::Send "{F8}{F4}"
!f::Send "{F8}{F4}"
; copy density
^+r::Send "{F1}{F8}"
^+f::Send "{F1}{F8}"

; color key cancel
+x::Send "{F5}{F4}{F6}{F4}{F7}{F4}"
; reset all and copy
!x::Send "{F5}{F4}{F6}{F4}{F7}{F4}{F8}{F4}{F1}{F5}{F1}{F6}{F1}{F7}{F1}{F8}"

; PASS
v::Send "{F11}"
+v::Send "{F1}{F11}"

; HOLD
Space::Send "{F1}{F4}"

; rotate
F2::RotateCCW()

; all rotate
+F2::Send "{F1}{F9}"

#SuspendExempt
; suspend toggle
^+n::Suspend
+Esc::ExitApp
#SuspendExempt False

; Start suspended
Suspend
