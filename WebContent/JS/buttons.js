$( function() {   
	
	// Deklaratzion der Effect Button 
      $( "#effect1" ).click( function( event ) {
    	  setEffect(0);
        } );
    
      $( "#effect2" ).click( function( event ) {
    	  setEffect(1);
      } );
      
      $( "#effect3" ).click( function( event ) {
    	  setEffect(2);
        } );
      
      $( "#effect4" ).click( function( event ) {
    	  setEffect(3);
        } );
      
      $( "#effect5" ).click( function( event ) {
    	  setEffect(4);
        } );
      
      $( "#effect6" ).click( function( event ) {
    	  setEffect(5);
        } );
      
      $( "#effect7" ).click( function( event ) {
    	  setEffect(6);
        } );
      
      $( "#effect8" ).click( function( event ) {
    	  setEffect(7);
        } );
      
      $( "#effect9" ).click( function( event ) {
    	  setEffect(8);
        } );
      
      $( "#effect10" ).click( function( event ) {
    	  setEffect(9);
        } );
      
      
   // Deklaratzion der Geräte Button 
      $( "#g1" ).click( function( event ) {
    	  setGeraet(0);
        } );
    
      $( "#g2" ).click( function( event ) {
    	  setGeraet(1);
      } );
      
      $( "#g3" ).click( function( event ) {
    	  setGeraet(2);
        } );
      
      $( "#g4" ).click( function( event ) {
    	  setGeraet(3);
        } );
      
      $( "#g5" ).click( function( event ) {
    	  setGeraet(4);
        } );
      
      $( "#g6" ).click( function( event ) {
    	  setGeraet(5);
        } );
      
      $( "#g7" ).click( function( event ) {
    	  setGeraet(6);
        } );
      
      $( "#g8" ).click( function( event ) {
    	  setGeraet(7);
        } );
      $( "#g9").click( function( event ) {
    	  setGeraet(8);
        } );
      
      $( "#g10" ).click( function( event ) {
    	  setGeraet(9);
        } );
 
      function setEffect(effectNr){
    	  $.ajax({
	            type : "POST",
	            url : "helpJSP/setEffect.jsp",
	            data : "effect=" + effectNr,
	           
	        });		  
      };
      
      function setGeraet(geraetNr){
    	  $.ajax({
	            type : "POST",
	            url : "helpJSP/setGeraete.jsp",
	            data : "geraet=" + geraetNr,
	        });		  
      };
      

});