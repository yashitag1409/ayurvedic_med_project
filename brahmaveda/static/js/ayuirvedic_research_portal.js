// btn
var arp_btn_one = document.querySelector("#arp-btn-one");
var arp_btn_two = document.querySelector("#arp-btn-two");
var arp_btn_three = document.querySelector("#arp-btn-three");
var goBack = document.querySelector(".goBack");

// body div
var arp_body_one = document.querySelector(".arp-body-one");
var arp_body_two = document.querySelector(".arp-body-two");
var arp_body_three = document.querySelector(".arp-body-three");
var types = document.querySelector("#types");
// searchtype

var ayurveda = document.querySelector("#ayurveda");
var unani = document.querySelector("#unani");
var siddha = document.querySelector("#siddha");
var homeopathy = document.querySelector("#homeopathy");

var precaution_select = document.querySelector("#precaution_select");
let precautionval = null;

const searchPrecautions = async () => {
  let result = await fetch("search_precaution.do");

  let tmp = result.json();

  return tmp;
};

var search_pre = () => {
  searchPrecautions().then((data) => {
    for (var pl of data) {
      // console.log(pl);
      let option = document.createElement("option");
      option.text = pl;
      option.value = pl;

      precaution_select.add(option, undefined);
    }
  });
};

search_pre();

arp_btn_one.addEventListener("click", () => {
  if (ayurveda.checked) {
    types.value = "ayurveda";
  } else if (unani.checked) {
    types.value = "unani";
  } else if (siddha.checked) {
    types.value = "sidda";
  } else {
    types.value = "homeopathy";
  }

  // console.log(types.value);

  arp_body_one.classList.add("d-none");
  arp_body_two.classList.remove("d-none");
  goBack.classList.remove("d-none");
});

goBack.addEventListener("click", () => {
  arp_body_two.classList.add("d-none");
  arp_body_one.classList.remove("d-none");
  goBack.classList.add("d-none");
});

// const selectedPrecaution = () => {
//   precautions = product_category.options[product_category.selectedIndex].value;
//   console.log("selected option : " + productCateVal);
//   // product_category.name = val;
// };
