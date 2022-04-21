function Notify(msg, style, state)
    if State == 'sv' then
        TriggerClientEvent('QBCore:Notify', source, msg, style)
    elseif State == 'cl' then
        TriggerEvent('QBCore:Notify', source, msg, style)
    end
end

Config = {}

Config.Keys = {
    ['ESC'] = 322, ['F1'] = 288, ['F2'] = 289, ['F3'] = 170, ['F5'] = 166, ['F6'] = 167, ['F7'] = 168, ['F8'] = 169, ['F9'] = 56, ['F10'] = 57,
    ['~'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['-'] = 84, ['='] = 83, ['BACKSPACE'] = 177,
    ['TAB'] = 37, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['P'] = 199, ['['] = 39, [']'] = 40, ['ENTER'] = 18,
    ['CAPS'] = 137, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['K'] = 311, ['L'] = 182,
    ['LEFTSHIFT'] = 21, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81,
    ['LEFTCTRL'] = 36, ['LEFTALT'] = 19, ['SPACE'] = 22, ['RIGHTCTRL'] = 70,
    ['HOME'] = 213, ['PAGEUP'] = 10, ['PAGEDOWN'] = 11, ['DELETE'] = 178,
    ['LEFT'] = 174, ['RIGHT'] = 175, ['TOP'] = 27, ['DOWN'] = 173,
}

Config.Debug = true

Config.Coords1 = {
    text = {
        x = 1237.005,
        y = -2948.50,
        z = 9.3192,
        h = 0.4
    },
    text2 = '~y~ E ~w~ - ﺮﻜﻨﺒﻟﺍ ﻝﻮﺧﺩ'
}

Config.Coords2 = {
    text = {
        x = 857.4472,
        y = -3250.09,
        z = -98.32,
        h = 17.2
    },
    text2 = '~y~ E ~w~ - ﺮﻜﻨﺒﻟﺍ ﻦﻣ ﺝﻭﺮﺨﻟﺍ'
}

Config.Coords3 = {
    text = {
        x = 905.6220,
        y = -3230.74,
        z = -98.29,
        h = 178.7
    },
    text2 = '~y~ E ~w~ - ﺔﺤﻠﺳﻷﺍﻭ ﻡﺎﻬﻤﻟﺍ ﺔﻤﺋﺎﻗ'
}

Config.Coords4 = {
    text = {
        x = 906.1151,
        y = -3197.83,
        z = -96.22 - 1.1,
        h = 128.2
    },
    text2 = '~y~ E - ~w~ ﺔﻤﺼﺒﻟﺍ ﻞﻳﺪﺒﺗ - ~g~30$'
}

Config.Font = {
    FirstFont = 'out',
    FontTwo = 'Arb',
}

Config.FingerPrint = {
    price = 30,
    Time = 3000,
    text = 'جاري تبديل البصمة',
    animDict = 'missarmenian2',
    anim = 'passout2'
}

Config.SelectKey = "E" -- زر فتح القائمة

-- الكلام الي يظهر للاعب
Config.Text = '~y~E~w~ -  ﺕﺎﻳﻮﻬﻟﺍ ﺝﺍﺮﺨﺘﺳﺍ ﺔﻤﺋﺎﻗ (15$)'

Config.Coords = {
    coords = {
        x = 908.2856,
        y = -3207.38,
        z = -97.18
    },
}

Config.IdCardPrice = 5000000

Config.NotifyNoMoney = 'لا تمتلك نقود كافية'

Config.NotifyNoMoneyCat = 'error'

Config.SuccessText = 'لقد تم استخراج الهوية بنجاح وخصم مبلغ '..Config.IdCardPrice..'$ من الكاش'

Config.SuccessCat = 'success'

Config.IDCardItemName = 'id_card'

Config.ItemQ = 1

Config.CitizenID = "BRK"..math.random(11111,99999)

Config.enableUsePermisson = true
Config.ShowNpc = true

Config.Staff = {
    'FNM58508',
    'SMQ34336',
}

Config.Vehicles = {
    ShowRoom = {
        [1] = {
            coords = vector4(922.61, -3236.09, -98.29, 87.25),
            defaultVehicle = 'Barrage',
            price = 290
        },
        [2] = {
            coords = vector4(933.86, -3220.77, -98.54, 37.39),
            defaultVehicle = 'Squaddie',
            price = 230
        },
        [3] = {
            coords = vector4(932.95, -3211.0, -98.27, 29.87),
            defaultVehicle = 'apc',
            price = 600
        },
        [4] = {
            coords = vector4(925.54, -3228.44, -98.28, 109.87),
            defaultVehicle = 'Halftrack',
            price = 530
        },
        [5] = {
            coords = vector4(925.08, -3214.38, -98.27, 83.89),
            defaultVehicle = 'dune3',
            price = 95
        },
    },
    Entery = {
        [1] = {
            coords = vector4(883.03, -3240.43, -98.89, 178.59),
            defaultVehicle = 'caddy3',
        },
        [2] = {
            coords = vector4(888.01, -3235.83, -98.28, 175.24),
            defaultVehicle = 'caddy2',
        },
        [3] = {
            coords = vector4(891.06, -3236.11, -98.28, 173.72),
            defaultVehicle = 'caddy2',
        },
        [4] = {
            coords = vector4(893.9, -3236.27, -98.26, 172.46),
            defaultVehicle = 'caddy2',
        },
        [5] = {
            coords = vector4(842.0, -3238.57, -98.62, 97.76),
            defaultVehicle = 'terbyte',
        },
    }
}

Config.Bandage = {
    item = 'bandage',
    price = 0.3532,
    amount = 1,
}