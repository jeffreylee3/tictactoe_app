// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  
  //$("button").click(function(){
  //  $("p").hide();
  //});

  //$("img").click(function(){
  //  $(this).hide();
	//});

  //$("button").click(function(){
  //  $("form").submit();
  //});  

  //
  // Comment out for now
  //
  //$("img").click(function(){
  //  $("form").submit();
  //}); 

  // read whose turn it is from HTML and set value based on that
  $(".square0").click(function(){      
    switch ($(".player_turn").text())
    {
    case "Player 1":
      $("#tictactoe_squares_attributes_0_value").attr("value","X");
      $("form").submit();
      break;
    case "Player 2":
      $("#tictactoe_squares_attributes_0_value").attr("value","O");
      $("form").submit();
      break;
    }  
  });

  $(".square1").click(function(){      
    switch ($(".player_turn").text())
    {
    case "Player 1":
      $("#tictactoe_squares_attributes_1_value").attr("value","X");
      $("form").submit();
      break;
    case "Player 2":
      $("#tictactoe_squares_attributes_1_value").attr("value","O");
      $("form").submit();
      break;
    }  
  });

  $(".square2").click(function(){      
    switch ($(".player_turn").text())
    {
    case "Player 1":
      $("#tictactoe_squares_attributes_2_value").attr("value","X");
      $("form").submit();
      break;
    case "Player 2":
      $("#tictactoe_squares_attributes_2_value").attr("value","O");
      $("form").submit();
      break;
    }  
  });

   $(".square3").click(function(){      
    switch ($(".player_turn").text())
    {
    case "Player 1":
      $("#tictactoe_squares_attributes_3_value").attr("value","X");
      $("form").submit();
      break;
    case "Player 2":
      $("#tictactoe_squares_attributes_3_value").attr("value","O");
      $("form").submit();
      break;
    }  
  });
  

  $(".square4").click(function(){      
    switch ($(".player_turn").text())
    {
    case "Player 1":
      $("#tictactoe_squares_attributes_4_value").attr("value","X");
      $("form").submit();
      break;
    case "Player 2":
      $("#tictactoe_squares_attributes_4_value").attr("value","O");
      $("form").submit();
      break;
    }  
  });

  $(".square5").click(function(){      
    switch ($(".player_turn").text())
    {
    case "Player 1":
      $("#tictactoe_squares_attributes_5_value").attr("value","X");
      $("form").submit();
      break;
    case "Player 2":
      $("#tictactoe_squares_attributes_5_value").attr("value","O");
      $("form").submit();
      break;
    }  
  });

  $(".square6").click(function(){      
    switch ($(".player_turn").text())
    {
    case "Player 1":
      $("#tictactoe_squares_attributes_6_value").attr("value","X");
      $("form").submit();
      break;
    case "Player 2":
      $("#tictactoe_squares_attributes_6_value").attr("value","O");
      $("form").submit();
      break;
    }  
  });

  $(".square7").click(function(){      
    switch ($(".player_turn").text())
    {
    case "Player 1":
      $("#tictactoe_squares_attributes_7_value").attr("value","X");
      $("form").submit();
      break;
    case "Player 2":
      $("#tictactoe_squares_attributes_7_value").attr("value","O");
      $("form").submit();
      break;
    }  
  });

  $(".square8").click(function(){      
    switch ($(".player_turn").text())
    {
    case "Player 1":
      $("#tictactoe_squares_attributes_8_value").attr("value","X");
      $("form").submit();
      break;
    case "Player 2":
      $("#tictactoe_squares_attributes_8_value").attr("value","O");
      $("form").submit();
      break;
    }  
  });    

 // $(".square1").click(function(){  
 //   if($("img").attr("alt") == "Blank") 
 //   {
 //     if ($(".player_turn").text() == "Player 1") { $("#tictactoe_squares_attributes_4_value").attr("value","X"); }
 //     if ($(".player_turn").text() == "Player 2") { $("#tictactoe_squares_attributes_4_value").attr("value","O"); }
 //   }
 //   $("form").submit();
 // });  

  $(".reset").click(function(){      
 // $("button").click(function(){      
    $("#tictactoe_squares_attributes_0_value").attr("value","");
    $("#tictactoe_squares_attributes_1_value").attr("value","");
    $("#tictactoe_squares_attributes_2_value").attr("value","");
    $("#tictactoe_squares_attributes_3_value").attr("value","");
    $("#tictactoe_squares_attributes_4_value").attr("value","");
    $("#tictactoe_squares_attributes_5_value").attr("value","");
    $("#tictactoe_squares_attributes_6_value").attr("value","");
    $("#tictactoe_squares_attributes_7_value").attr("value","");
    $("#tictactoe_squares_attributes_8_value").attr("value","");
    $("form").submit();  
  });

});