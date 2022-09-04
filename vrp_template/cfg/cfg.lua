local cfg = {}

cfg.marker = {
	-- marker https://docs.fivem.net/docs/game-references/blips/
	--scale={sx,sy,sz} 
	--color={r,g,b,a}
	
	Test = {
		"PoI",{ blip_id = 431, blip_color = 25, marker_id = 1, scale = {1.0,1.0,1.0}, color={255, 0, 0, 255}}
	} 
}

cfg.pos = {
	--{Name, Gtype, Cords}
	
	{"Vinewood", 		"Test", 89.577018737793,2.16031360626221,68.322021484375},           -- 7131 (Vinewood)
	{"Little Seoul", 	"Test", -526.497131347656,-1222.79455566406,18.4549674987793}       -- 8254 (Little Seoul)
}

cfg.disable_controls = true

cfg.disable_keys = {
	--table of all keys, true = disable/ flase = enabled
    [0]   = true,			-- ["V"]
    [8]   = false,			-- ["S"]
    [9]   = false,			-- ["D"]
    [10]  = false,			-- ["PAGEUP"]
    [11]  = false,			-- ["PAGEDOWN"]
    [18]  = false,			-- ["ENTER"]
    [19]  = false,			-- ["LEFTALT"]
    [20]  = false,			-- ["Z"]
    [21]  = false,			-- ["LEFTSHIFT"]
    [22]  = true,			-- ["SPACE"]
    [23]  = true,			-- ["F"]
    [26]  = false,			-- ["C"]
    [27]  = false,			-- ["UP"]
    [29]  = true,			-- ["B"]
    [32]  = false,			-- ["W"]
    [34]  = false,			-- ["A"]
    [36]  = false,			-- ["LEFTCTRL"]
    [37]  = true,			-- ["TAB"]
    [38]  = false,			-- ["E"]
    [39]  = false,			-- ["["]
    [40]  = false,			-- ["]"]
    [44]  = true,			-- ["Q"]
    [45]  = false,			-- ["R"]
    [47]  = false,			-- ["G"]
    [56]  = true,			-- ["F9"]
    [57]  = false,			-- ["F10"]
    [60]  = false,			-- ["N5"]
    [61]  = false,			-- ["N8"]
    [70]  = false,			-- ["RIGHTCTRL"]
    [73]  = false,			-- ["X"]
    [74]  = false,			-- ["H"]
    [81]  = false,			-- ["."]
    [82]  = true,			-- [","]
    [83]  = false,			-- ["="]
    [84]  = false,			-- ["-"]
    [96]  = false,			-- ["N+"]
    [97]  = false,			-- ["N-"]
    [107] = false,			-- ["N6"]
    [108] = false,			-- ["N4"]
    [117] = false,			-- ["N7"]
    [118] = false,			-- ["N9"]
    [137] = false,			-- ["CAPS"]
    [157] = false,			-- ["1"]
    [158] = false,			-- ["2"]
    [159] = false,			-- ["6"]
    [160] = false,			-- ["3"]
    [161] = false,			-- ["7"]
    [162] = false,			-- ["8"]
    [163] = false,			-- ["9"]
    [164] = false,			-- ["4"]
    [165] = false,			-- ["5"]
    [166] = true,			-- ["F5"]
    [167] = true,			-- ["F6"]
    [168] = true,			-- ["F7"]
    [169] = true,			-- ["F8"]
    [170] = true,			-- ["F3"]
    [173] = false,			-- ["DOWN"]
    [174] = false,			-- ["LEFT"]
    [175] = false,			-- ["RIGHT"]
    [177] = false,			-- ["BACKSPACE"]
    [178] = false,			-- ["DELETE"]
    [182] = false,			-- ["L"]
    [199] = false,			-- ["P"]
    [201] = false,			-- ["NENTER"]
    [213] = false,			-- ["HOME"]
    [243] = false,			-- ["~"]
    [244] = false,			-- ["M"]
    [245] = false,			-- ["T"]
    [246] = false,			-- ["Y"]
    [249] = false,			-- ["N"]
    [288] = false,			-- ["F1"]
    [289] = false,			-- ["F2"]
    [303] = false,			-- ["U"]
    [311] = true,			-- ["K"]
	[322] = true			-- ["ESC"]
}

return cfg