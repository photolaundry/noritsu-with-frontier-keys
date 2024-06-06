#Requires AutoHotkey v2.0
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
^+a::Send "{F5}{F4}"
^+q::Send "{F5}{F4}"
q::Send "{F5}{F10}"
+q::Send "{F5}{F10}{F10}{F10}"

; magenta
s::Send "{F6}{F9}"
+s::Send "{F6}{F9}{F9}{F9}"
^+s::Send "{F6}{F4}"
^+w::Send "{F6}{F4}"
w::Send "{F6}{F10}"
+w::Send "{F6}{F10}{F10}{F10}"

; cyan
d::Send "{F7}{F9}"
+d::Send "{F7}{F9}{F9}{F9}"
^+d::Send "{F7}{F4}"
^+e::Send "{F7}{F4}"
e::Send "{F7}{F10}"
+e::Send "{F7}{F10}{F10}{F10}"

; density
z::Send "{F8}{F9}"
+z::Send "{F8}{F9}{F9}{F9}"
x::Send "{F8}{F4}"
c::Send "{F8}{F10}"
+c::Send "{F8}{F10}{F10}{F10}"

; color key cancel
+r::Send "{F5}{F4}{F6}{F4}{F7}{F4}"

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
