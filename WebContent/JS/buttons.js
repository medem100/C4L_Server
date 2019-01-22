$( function() {   
	
	// Deklaratzion der Effect Button 
      $( "#effect1" ).click( function( event ) {
    	  setEffect(1);
        } );
    
      $( "#effect2" ).click( function( event ) {
    	  setEffect(2);
      } );
      
      $( "#effect3" ).click( function( event ) {
    	  setEffect(3);
        } );
      
      $( "#effect4" ).click( function( event ) {
    	  setEffect(4);
        } );
      
      $( "#effect5" ).click( function( event ) {
    	  setEffect(5);
        } );
      
      $( "#effect6" ).click( function( event ) {
    	  setEffect(6);
        } );
      
      $( "#effect7" ).click( function( event ) {
    	  setEffect(7);
        } );
      
      $( "#effect8" ).click( function( event ) {
    	  setEffect(8);
        } );
      
      $( "#effect9" ).click( function( event ) {
    	  setEffect(9);
        } );
      
      $( "#effect10" ).click( function( event ) {
    	  setEffect(10);
        } );
      
      
   // Deklaratzion der Geräte Button 
      $( "#g1" ).click( function( event ) {
    	  setGeraet(1);
        } );
    
      $( "#g2" ).click( function( event ) {
    	  setGeraet(2);
      } );
      
      $( "#g3" ).click( function( event ) {
    	  setGeraet(3);
        } );
      
      $( "#g4" ).click( function( event ) {
    	  setGeraet(4);
        } );
      
      $( "#g5" ).click( function( event ) {
    	  setGeraet(5);
        } );
      
      $( "#g6" ).click( function( event ) {
    	  setGeraet(6);
        } );
      
      $( "#g7" ).click( function( event ) {
    	  setGeraet(7);
        } );
      
      $( "#g8" ).click( function( event ) {
    	  setGeraet(8);
        } );
      $( "#g9").click( function( event ) {
    	  setGeraet(9);
        } );
      
      $( "#g10" ).click( function( event ) {
    	  setGeraet(10);
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