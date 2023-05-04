let menu = [...Array(100).keys()];
// let direction = (window.innerWidth < 460) ? 'horizontal' : 'vertical';
let direction = 'horizontal';

var swiper = new Swiper(".mySwiper", {
    direction: direction,
    speed: 800,
    effect: 'fade',
    fadeEffect: {
        crossFade: true
    },
    pagination: {
        el: ".swiper-pagination",
    },
    // pagination: {
    //     el: ".swiper-pagination",
    //     clickable: true,
    //     renderBullet: function(index, className) {
    //         return '<span class="' + className + '">' + (menu[index + 1]) + '</span>';
    //     },
    // },
    autoplay: {
        delay: 4000,
    },
});

// Menu mobile
let menuMobile = document.querySelector('.menu-mobile');
let active ='';
let menuStatus = document.querySelector('.main-navigation').getAttribute('data-menu');
menuMobile.addEventListener('click',() => {      
        
        if (menuStatus == "closed") {            
            setTimeout(function(){   
                document.querySelector('.menu').style.display = "flex";
                document.querySelector('.header-btn').style.display = 'block';
            }, 100);
            setTimeout(function(){  
                document.querySelector('.menu').style.width = "100%";                      
                document.querySelector('.main-navigation').setAttribute('data-menu','open');                
                document.querySelector('.header-btn').style.opacity = '1';
                document.querySelectorAll('.menu li').forEach((el, index)=>{
                    el.style.opacity = "1";
                    console.log(index);
                });               
                menuStatus = 'open'; 
            }, 150);              
            
        }

        if (menuStatus == "open") { 
            setTimeout(function(){  
                document.querySelector('.menu').style.width = "0";    
                document.querySelector('.header-btn').style.opacity = '0';                  
                document.querySelector('.main-navigation').setAttribute('data-menu','closed');
                document.querySelectorAll('.menu li').forEach((el, index)=>{
                    el.style.opacity = "0";
                    console.log(index);
                }); 
                menuStatus = 'closed'; 
            }, 100);         
            setTimeout(function(){   
                document.querySelector('.menu').style.display = "none";
                document.querySelector('.header-btn').style.display = 'none';                
            }, 800);               
        }

        console.log(menuStatus);
});