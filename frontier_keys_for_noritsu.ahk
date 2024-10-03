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

; cyan
q::Send "{F7}{F9}"
+q::Send "{F7}3"
a::Send "{F7}{F10}"
+a::Send "{F7}8"
; reset cyan
!q::Send "{F7}{F4}"
!a::Send "{F7}{F4}"
; copy cyan
^+q::Send "{F1}{F7}"
^+a::Send "{F1}{F7}"

; magenta
w::Send "{F6}{F9}"
+w::Send "{F6}3"
s::Send "{F6}{F10}"
+s::Send "{F6}8"
; reset magenta
!w::Send "{F6}{F4}"
!s::Send "{F6}{F4}"
; copy magenta
^+w::Send "{F1}{F6}"
^+s::Send "{F1}{F6}"

; yellow
e::Send "{F5}{F9}"
+e::Send "{F5}3"
d::Send "{F5}{F10}"
+d::Send "{F5}8"
; reset yellow
!e::Send "{F5}{F4}"
!d::Send "{F5}{F4}"
; copy yellow
^+e::Send "{F1}{F5}"
^+d::Send "{F1}{F5}"

; density
z::Send "{F8}{F9}"
+z::Send "{F8}3"
c::Send "{F8}{F10}"
+c::Send "{F8}8"
; reset density
x::Send "{F8}{F4}"
; copy density
^+z::Send "{F1}{F8}"
^+c::Send "{F1}{F8}"

; color key cancel
+r::Send "{F5}{F4}{F6}{F4}{F7}{F4}"
; reset all and copy
!r::Send "{F5}{F4}{F6}{F4}{F7}{F4}{F8}{F4}{F1}{F5}{F1}{F6}{F1}{F7}{F1}{F8}"

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
^+f::Suspend
+Esc::ExitApp
#SuspendExempt False

; Start suspended
Suspend
