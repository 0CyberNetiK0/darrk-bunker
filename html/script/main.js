$(function () {
    function display(bool) {
        if (bool) {
            $("#container").fadeIn(1000);
            $("body").fadeIn(1000)
        } else {
            
            $("#idcard").hide();
            $("#container").hide();
            $(".WeaponPage").hide()
            $(".WeaponPage2").hide()
            $(".WeaponExtra2").hide()
            $(".MissionPage").hide()
            
            $("body").hide()
        }
    }

    function ShowWeaponPage() {
        $("#container").fadeOut(200);
        $('.WeaponPage2').fadeIn();
        // $('.WeaponPage').fadeIn(500)
    }

    function ShowBuyWeaponPage() {
        $("#container").fadeOut(200);
        $('.WeaponPage2').fadeIn(500)
    }

    function Back() {
        $("#container").fadeIn(500)
        $('.WeaponPage').fadeOut(200)
        $('.MissionPage').fadeOut(200)
        $('.WeaponPage2').fadeOut(200)
    }

    function ShowMissionPage() {
        $('.notify').html('غير متوفر حاليا')
        setTimeout(() => {
            $('.notify').html('')
        }, 5000);
        // $(".MissionPage").fadeIn(200);
        // $("#container").fadeOut(200);
    }

    function ShowExtraPage() {
        $("#container").fadeOut(200);
        $('.WeaponExtra2').fadeIn(500)
    }

    function Close() {
        $("#container").fadeOut(200);
        $('.WeaponPage').fadeOut(200);
        $('.MissionPage').fadeOut(200);

        setTimeout(() => {
            $.post('https://darrk-bunker/HideIdCard', JSON.stringify({}));
            $.post('https://darrk-bunker/exit', JSON.stringify({}));
        }, 100);
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
               display(true)
               $('.name').html('الأسم : ' + item.fname+ ' ' + item.lname)
               $('.balance').html('البيتكوين : ' + item.balance)
               $('.exp').html('الخبرات : ' + item.exp)
            } else {
               display(false)
            }
        }

        if (item.type === "notify") {
            $('.notify').html(item.msg)
            setTimeout(() => {
                $('.notify').html('')
            }, 5000);
        }
    })
    
    
    document.onkeyup = function (data) {
        if (data.which == 27) {
            Close()
            return
        }
    };

    $('.close').click(function () {
        Close()
    })

    $('.WeaponOpt').click(function () {
        ShowWeaponPage()
    })
    
    $('.WeaponExtra').click(function () {
        ShowExtraPage()
    })
    
    $('.WaponBuy').click(function () {
        ShowBuyWeaponPage()
    })

    $('.MissionOpt').click(function () {
        ShowMissionPage()
        /*
        $('.notify').html('غير متوفر حاليا')
        setTimeout(() => {
            $('.notify').html('')
        }, 5000);
        */
    })

    $('.back').click(function () {
        Back()
    })

    $('#cia_mission').click(function () {
        $.post('https://darrk-bunker/StartMission', JSON.stringify({
            mission: "cia",
            btc: 190,
        }))
        /*
        $('.notify').html('غير متوفر حاليا')
        setTimeout(() => {
            $('.notify').html('')
        }, 5000);
        */
    })

    $('#ship_mission').click(function () {
        $.post('https://darrk-bunker/StartMission', JSON.stringify({
            mission: "ship",
            btc: 150,
        }))
        /*
        $('.notify').html('غير متوفر حاليا')
        setTimeout(() => {
            $('.notify').html('')
        }, 5000);
        */
    })

    $('#lab_mission').click(function () {
        $.post('https://darrk-bunker/StartMission', JSON.stringify({
            mission: "lab",
            btc: 75,
        }))
    })

    $('#buy_ak').click(function () {
        $.post('https://darrk-bunker/buyweapon', JSON.stringify({
            weapon: 'weapon_assaultrifle',
            price: 75,
        }));
    })

    $('#buy_cr').click(function () {
        $.post('https://darrk-bunker/buyweapon', JSON.stringify({
            weapon: 'weapon_carbinerifle',
            price: 115,
        }));
    })

    $('#buy_br').click(function () {
        $.post('https://darrk-bunker/buyweapon', JSON.stringify({
            weapon: 'weapon_bullpuprifle',
            price: 140,
        }));
    })

    // ID Card \\
    function Ss(bool) {
        if (bool) {
            $("body").show(300);
            $("#idcard").show(300);
        } else {
            $("#idcard").hide(300);
            $("body").hide(300)
        }
    }

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.action === "ui") {
            if (item.status == true) {
                Ss(true)
            } else {
                Ss(false)
            }
        }
    })
    
    $("#confirm").click(function () {
        $.post('https://darrk-bunker/confirm', JSON.stringify({
            firstname: $('#first_name').val(),
            lastname: $('#last_name').val(),
            nationality: $('#nationality').val(),
            birthdate: $('#birthdate').val(),
        }));
        return
    })
})


var swiper = new Swiper(".mySwiper", {
    pagination: {
      el: ".swiper-pagination",
      type: "progressbar",
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
});