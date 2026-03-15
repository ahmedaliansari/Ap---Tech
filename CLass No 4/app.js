fetch("https://fakestoreapi.com/products/")
  .then((response) => response.json())
  .then((data) => {
    data.forEach((a) => {
      console.log(a.id);
      console.log(a.title);
      console.log(a.price);
      console.log(a.description);
      console.log(a.category);
      console.log(a.rating.rate);
      console.log(a.rating.rate);
    });
  });
