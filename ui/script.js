console.log("JS LOADED")
$(function(){
    window.addEventListener("message", function(event){
        let all = document.querySelector(".box")

        let ev = event.data
        let show = true

        if (ev.show ){
            all.style = "right: 1%"

            let name = ev.name;
            $(".name").html("Name: " +name);

            let job = ev.job;
            $(".job").html("Job: "+job);

            let cash = ev.cash;
            $(".cash").html("Cash: " +cash);

            let bank = ev.bank;
            $(".bank").html("Bank: " +bank);
        } else {
            all.style = "right: -40%"
        }
        
    })
})