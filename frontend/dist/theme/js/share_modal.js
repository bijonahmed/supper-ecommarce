function copy() {
    // Get the text field
    var copyText = document.getElementById("myInput");
    var change = document.getElementById("change_txt");
  
    // Select the text field
    copyText.select();
    copyText.setSelectionRange(0, 99999); // For mobile devices
  
    // Copy the text inside the text field
    navigator.clipboard.writeText(copyText.value);
    change.innerHTML("Copied");
    
    // Alert the copied text
    // alert("Copied the text: " + copyText.value);
  }

  $(document).ready(function(){
    $(".share_btn").click(function(){
        $(".modal_share").fadeIn();
    })
    $(".close").click(function(){
        $(".modal_share").fadeOut();
    })
  })