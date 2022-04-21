
# Darrk Bunker Script | سكربت البنكر الخاص بدارك

تمت برمجة السكربت بكل حب من دارك

- [ديسكورد](https://discord.gg/darrk)

## متطلبات

- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-target](https://github.com/BerkieBb/qb-target)
- [PolyZone](https://github.com/mkafrin/PolyZone)
## طريقة التركيب

عليك الذهاب الى qb-target
- init.lua
- ابحث على Config.BoxZones

```lua
  Config.BoxZones = {
      ["Doctor"] = {
        name = "Bunker Doctor",
        coords = vector3(906.85, -3198.9, -97.19),
        length = 0.6,
        width = 0.8,
        heading = 133.0,
        -- debugPoly = true,
        minZ= -98.19,
        maxZ= -96.39,
        options = {
            {
              type = "client",
              event = "darrk-bunker:client:FingerPrint#049827yb239d",
              icon = "fas fa-circle",
              label = "تغيير البصمة",
            },
            {
              type = "server",
              event = "darrk-bunker:server:bandagebuy",
              icon = "fas fa-circle",
              label = "شراء الضماضات  $0.3453",
            },
        },
        distance = 3.5
    },
    ["Cards"] = {
        name = "Bunker Cards",
        coords = vector3(908.75, -3207.44, -97.19),
        length = 0.65,
        width = 0.8,
        heading = 295.0,
        -- debugPoly = true,
        minZ= -98.19,
        maxZ= -96.39,
        options = {
            {
              type = "client",
              event = "darrk-bunker:client:IdCard#049827yb239d",
              icon = "fas fa-circle",
              label = "شراء هوية مزورة",
            },
        },
        distance = 3.5
    },
    ["Weapons"] = {
        name = "Bunker Weapons",
        coords = vector3(906.01, -3230.91, -98.29),
        length = 0.65,
        width = 0.8,
        heading = 90.0,
        -- debugPoly = true,
        minZ=-99.24,
        maxZ=-97.84,
        options = {
            {
              type = "client",
              event = "darrk-bunker:client:Weapons#049827yb239d",
              icon = "fas fa-circle",
              label = "شراء اللأسلحة",
            },
        },
        distance = 3.5
    },
  }
```


## License

```
MIT License

Copyright (c) [2022] [Darrk Dev]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
