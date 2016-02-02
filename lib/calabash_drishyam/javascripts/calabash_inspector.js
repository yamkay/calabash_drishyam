function highlightViewInScreenShot(image_path, x, y, width, height)
{
    
    var newImg = new Image();
    newImg.onload = function() {
    
    	var canvas = document.getElementById('canvas');
    	var context = canvas.getContext("2d");
    
    	context.clearRect ( 0 , 0 , canvas.width, canvas.height );
    
    	canvas.width = 320;
    	canvas.height = 568;
  		context.drawImage(this,0,0,this.width,this.height,0,0,320,568)
    	context.globalAlpha = 0.3;
  		context.fillStyle = "green"; 
    	context.fillRect(x, y, width, height);
  		context.stroke();
  
	}
	
	newImg.src = image_path;
	
}

