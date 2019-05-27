const bikePrice = () => {
  const PricePerDay = document.getElementById("price")

  const BeginDate = document.getElementById("begindate");
  const EndDate = document.getElementById("enddate");


  BeginDate.addEventListener("input", () => {
   const bd =  new Date(BeginDate.value);
   const ed =  new Date(EndDate.value);

   const diffTime = Math.abs(bd.getTime() - ed.getTime())
   const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24))

   document.getElementById("price-final").innerText = (diffDays * PricePerDay.innerText);

  } )

EndDate.addEventListener("input", () => {
   const bd =  new Date(BeginDate.value);
   const ed =  new Date(EndDate.value);

   const diffTime = Math.abs(bd.getTime() - ed.getTime())
   const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24))

   document.getElementById("price-final").innerText = (diffDays * PricePerDay.innerText);

  } )

}

export {bikePrice};
