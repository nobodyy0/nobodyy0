DISCLAIMER at this point in time I do not know how to properly set the license so I will leave a file called COPYING cointaining the WTFPL (I have to study, I aint got this much time to research on this topic)

All this script does is just beep the motherboard buzzer every hour provided that you have installed one or the command "beep" works on your machine.

Why?

I always heard those beeps every hour on the radio, then, many years later, I discovered that those beeps actually come from an atomic clock so I decided to recreate this on my pc. I know, the clock inside our pcs is nowhere near accurate as an atomic one, but I dont need that level of precision, at least me.

I commented most of the workings of the script inside the script itself although it is not complex.

I also have to point out that I have written this thing in bash scripting language in barely 2 days, knowing very little about it on the first day.

On the first day I made a dumber and very inefficient version of this script that was constantly checking the time resulting in a very high cpu usage (idiot idea).
So I thought that it would be better to only execute once every hour, and so I did.
