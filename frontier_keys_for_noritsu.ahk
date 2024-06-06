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

; cyan
q::Send "{F7}{F9}"
+q::Send "{F7}{F9}{F9}{F9}"
^+q::Send "{F7}{F4}"
^+a::Send "{F7}{F4}"
a::Send "{F7}{F10}"
+a::Send "{F7}{F10}{F10}{F10}"

; magenta
w::Send "{F6}{F9}"
+w::Send "{F6}{F9}{F9}{F9}"
^+w::Send "{F6}{F4}"
^+s::Send "{F6}{F4}"
s::Send "{F6}{F10}"
+s::Send "{F6}{F10}{F10}{F10}"

; yellow
e::Send "{F5}{F9}"
+e::Send "{F5}{F9}{F9}{F9}"
^+e::Send "{F5}{F4}"
^+d::Send "{F5}{F4}"
d::Send "{F5}{F10}"
+d::Send "{F5}{F10}{F10}{F10}"

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