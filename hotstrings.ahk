#SingleInstance,Force
SetWorkingDir, %A_ScriptDir%
#Include %A_ScriptDir%\confidential.ahk

::ques::question
::urself::yourself
::sec::second
::info::information
::lang::language
::msg::message
::diff::difference
::sln::solution
::env::environment
::comm::communication
::exp::experience
::arch::architecture

::SV::SystemVerilog
::ahk::AutoHotkey
::u::you
::ur::your
::i::I
::idk::I don't know
::r::are
::tq::Thanks
::cyp::Can you please ?{left 2}
::aiot::Any idea on this?

::bcoz::because,

::aka::also known as

::br::
(
BR,
Vishal Chovatiya
)

::heym::
SendInput, 
(
Hi ,

BR,
Vishal Chovatiya

)
SendInput, {Up 5}{End}{Left}
return

::rslot::
    SendInput, 
    (
Hi ,

Reserving the slot for the same.

BR,
Vishal Chovatiya

    )
    SendInput, {Up 6}{End}{Left}
return

::pat::
    SendInput, 
    (
Hi ,

Purpose:
- 

Action:
- 

Timeline:
- 

BR,
Vishal Chovatiya

    )
    SendInput, {Up 18}{End}{Left}
return

::ttl::In middle of something, will talk to you soon
::mttl::In meeting, will come back to you soon

:*:i@::vishal.chovatiya@infineon.com
:*:g@::visheshchovatiya@gmail.com
:*:y@::vishalchovatiya@ymail.com
:*:hot@::vishalchovatiya@hotmail.com
::mob::9555535096

:*:app@::
    ; Approved to Move to Scheduled for Work, <Date>, CCB present (<list of CCB members>)
    SendInput, Approved, Scheduled for Work @{Space}
        FormatTime, time, A_now, ddd d-MMM-yy hh:mm tt 
    send %time%
    SendInput, {Space}IST, CCB present: Vishal Chovatiya, Neha Jain
return
