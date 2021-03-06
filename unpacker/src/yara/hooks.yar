rule Layer2Hooks {

    meta:
        author       = "d00rt - @D00RT_RM"

        version      = "1.0.0"
        maintainer   = "d00rt - @D00RT_RM"
        email        = "d00rt.fake@gmail.com"
        status       = "Testing"

    strings:
        $size = {
            01 ?? 8B ?? ?? 83 ?? 01 81 ?? ?? ?? ?? ?? 89
        }

        $hooks1 = { 
            8B 45 ?? 8B 4D ?? 31 D2 8D 35 ?? ?? ?? ?? BF FB FF FF FF 8D 1D ?? ?? ?? ?? 83 C3 FB
        }

        $hooks2 = {
            E8 ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? 8B 4D ?? 6B D1 0C 01 D0 83 C0 08
        }

    condition:
        $size and ($hooks1 or $hooks2)
}
 