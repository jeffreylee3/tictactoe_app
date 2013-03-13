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
  


  $("#tictactoe_players_attributes_1_name").attr("value", "CPU");
  $("#tictactoe_players_attributes_1_name").hide();

  $("#tictactoe_players_attributes_1_first_to_act").hide();

  $("label[for=tictactoe_players_attributes_1_first_to_act]").hide();



  if( $(".player-turn-marker").text() == "Player 1" )
  {
    $(".player-2-turn").hide();
  }
  if( $(".player-turn-marker").text() == "Player 2" )
  {
    $(".player-1-turn").hide();  

    setTimeout(function() {
      switch ($(".cpu-move-marker").text())
      {
      case "0":
        $("#tictactoe_squares_attributes_0_value").attr("value","O");
        $("form").submit();
        break;
      case "1":
        $("#tictactoe_squares_attributes_1_value").attr("value","O");
        $("form").submit();
        break;
      case "2":
        $("#tictactoe_squares_attributes_2_value").attr("value","O");
        $("form").submit();
        break;
      case "3":
        $("#tictactoe_squares_attributes_3_value").attr("value","O");
        $("form").submit();
        break;
      case "4":
        $("#tictactoe_squares_attributes_4_value").attr("value","O");
        $("form").submit();
        break;
      case "5":
        $("#tictactoe_squares_attributes_5_value").attr("value","O");
        $("form").submit();
        break;
      case "6":
        $("#tictactoe_squares_attributes_6_value").attr("value","O");
        $("form").submit();
        break;
      case "7":
        $("#tictactoe_squares_attributes_7_value").attr("value","O");
        $("form").submit();
        break;
      case "8":
        $("#tictactoe_squares_attributes_8_value").attr("value","O");
        $("form").submit();
        break;                                    
      }
    }, 2000);

  }  
  if( $(".player-winner-marker").text() == "Player 1" )
  {
    $(".player-2-winner").hide();
    $(".player-no-winner").hide();
  }
  if( $(".player-winner-marker").text() == "Player 2" )
  {
    $(".player-1-winner").hide();
    $(".player-no-winner").hide();    
  }  
  if( $(".player-winner-marker").text() == "Draw" )
  {
    $(".player-1-winner").hide();
    $(".player-2-winner").hide();
  }  
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
    switch ($(".player-turn-marker").text())
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
    switch ($(".player-turn-marker").text())
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
    switch ($(".player-turn-marker").text())
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
    switch ($(".player-turn-marker").text())
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
    switch ($(".player-turn-marker").text())
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
    switch ($(".player-turn-marker").text())
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
    switch ($(".player-turn-marker").text())
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
    switch ($(".player-turn-marker").text())
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
    switch ($(".player-turn-marker").text())
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