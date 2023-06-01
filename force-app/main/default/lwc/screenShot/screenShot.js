import { LightningElement } from 'lwc';
import HTML2CANVAS from '@salesforce/resourceUrl/HTML2CANVAS';
export default class ScreenShot extends LightningElement {



connectedCallback() {
 
	loadScript(this, HTML2CANVAS).then(() => {
		console.log('html2canvas loaded');
	});
}


 imgsrc = '';

    printDiv() {
        this.imgsrc = '';
        html2canvas(this.template.querySelector('.print-preview-div'),{ 
            scale: "5",
            onrendered: (canvas)=> {
                //show image
                var myCanvas = this.template.querySelector('.my_canvas_id');
                var ctx = myCanvas.getContext('2d');
                ctx.webkitImageSmoothingEnabled = false;
                ctx.mozImageSmoothingEnabled = false;
                ctx.imageSmoothingEnabled = false;
                var img = new Image;
                img.onload = function(){
                    ctx.drawImage(img,0,0,270,350); // Or at whatever offset you like
                };
                console.log('img >> ', canvas.toDataURL());
                img.src = canvas.toDataURL();
                this.imgsrc = img.src;
            }
        });
    }

}