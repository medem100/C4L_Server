$( function() {
	
	// Definitzion der regler 1-8
    $( "#slider-R" ).slider({
      orientation: "vertical",
      range: "min",
      min: 0,
      max: 255,
      value: 0,
      slide: function( event, ui ) {
    	  $.ajax({
	            type : "POST",
	            url : "helpJSP/setFaderValue.jsp",
	            data : "fader=0&value=" + ui.value,
	           
	        });		  
         $( "#amountR" ).val( ui.value );
      }
    });
    
    $( "#slider-G" ).slider({
        orientation: "vertical",
        range: "min",
        min: 0,
        max: 255,
        value: 0,
        slide: function( event, ui ) {
      	  $.ajax({
  	            type : "POST",
  	            url : "helpJSP/setFaderValue.jsp",
  	            data : "fader=1&value=" + ui.value,
  	           
  	        });		  
           $( "#amountG" ).val( ui.value );
        }
      });
    
    $( "#slider-B" ).slider({
        orientation: "vertical",
        range: "min",
        min: 0,
        max: 255,
        value: 0,
        slide: function( event, ui ) {
      	  $.ajax({
  	            type : "POST",
  	            url : "helpJSP/setFaderValue.jsp",
  	            data : "fader=2&value=" + ui.value,
  	           
  	        });		  
           $( "#amountB" ).val( ui.value );
        }
      });
    
    $( "#slider-4" ).slider({
        orientation: "vertical",
        range: "min",
        min: 0,
        max: 255,
        value: 0,
        slide: function( event, ui ) {
      	  $.ajax({
  	            type : "POST",
  	            url : "helpJSP/setFaderValue.jsp",
  	            data : "fader=3&value=" + ui.value,
  	           
  	        });		  
           $( "#amount4" ).val( ui.value );
        }
      });
    
    $( "#slider-5" ).slider({
        orientation: "vertical",
        range: "min",
        min: 0,
        max: 255,
        value: 0,
        slide: function( event, ui ) {
      	  $.ajax({
  	            type : "POST",
  	            url : "helpJSP/setFaderValue.jsp",
  	            data : "fader=4&value=" + ui.value,
  	           
  	        });		  
           $( "#amount5" ).val( ui.value );
        }
      });
    
    $( "#slider-6" ).slider({
        orientation: "vertical",
        range: "min",
        min: 0,
        max: 255,
        value: 0,
        slide: function( event, ui ) {
      	  $.ajax({
  	            type : "POST",
  	            url : "helpJSP/setFaderValue.jsp",
  	            data : "fader=5&value=" + ui.value,
  	           
  	        });		  
           $( "#amount6" ).val( ui.value );
        }
      });
    
    
    $( "#slider-7" ).slider({
        orientation: "vertical",
        range: "min",
        min: 0,
        max: 255,
        value: 0,
        slide: function( event, ui ) {
      	  $.ajax({
  	            type : "POST",
  	            url : "helpJSP/setFaderValue.jsp",
  	            data : "fader=6&value=" + ui.value,
  	           
  	        });		  
           $( "#amount7" ).val( ui.value );
        }
      });
    
    
    $( "#slider-8" ).slider({
        orientation: "vertical",
        range: "min",
        min: 0,
        max: 255,
        value: 0,
        slide: function( event, ui ) {
      	  $.ajax({
  	            type : "POST",
  	            url : "helpJSP/setFaderValue.jsp",
  	            data : "fader=7&value=" + ui.value,
  	           
  	        });		  
           $( "#amount8" ).val( ui.value );
        }
      });
    
    
    
    
    
    
    //definitzon für regler speed und size
    
     $( "#speed" ).slider({
        orientation: "vertical",
        range: "min",
        min: 0,
        max: 255,
        value: 0,
        slide: function( event, ui ) {
      	  $.ajax({
  	            type : "POST",
  	            url : "helpJSP/setSpeed.jsp",
  	            data : "speed=" + ui.value,
  	           
  	        });		  
           $( "#amoundSpeed" ).val( ui.value );
        }
     
      }); 
      $( "#size" ).slider({
          orientation: "vertical",
          range: "min",
          min: 0,
          max: 255,
          value: 0,
          slide: function( event, ui ) {
        	  $.ajax({
    	            type : "POST",
    	            url : "helpJSP/setSice.jsp",
    	            data : "sice=" + ui.value,
    	           
    	        });		  
             $( "#amountSice" ).val( ui.value );
          }
        });
          
  } );