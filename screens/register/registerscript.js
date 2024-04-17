 document.querySelector("#show-register").addEventListener("click",function(){
	document.querySelector(".popupr").classList.add("active");
});
document.querySelector(".popupr .close-butn").addEventListener("click",function(){
	document.querySelector(".popupr").classList.remove("active");
});
