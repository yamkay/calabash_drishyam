function highlightViewInScreenShot(image_path, x, y, width, height)
{
    var newImg = new Image();
    newImg.onload = function() {
    
    	var canvas = document.getElementById('canvas');
    	var context = canvas.getContext("2d");
    
    	context.clearRect ( 0 , 0 , canvas.width, canvas.height);

  		context.drawImage(this,0,0,this.width,this.height,0,0,canvas.width,canvas.height)
    	context.globalAlpha = 0.3;
  		context.fillStyle = "green"; 
    	context.fillRect(x, y, width, height);
  		context.stroke();
  
	}
	
	newImg.src = image_path;
	
}

