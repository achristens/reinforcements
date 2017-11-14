var items = ["purchase domain", "install SSL certificate", "deploy site", "celebrate success"];

function listItems(){
  console.log("Todo:");
  for(var i = 0; i < items.length; i++){
    var num = i+1;
    console.log(num + ": " + items[i]);
  }
}

listItems();
