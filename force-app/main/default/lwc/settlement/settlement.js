import { LightningElement, api, wire, track } from 'lwc';
import setSettlement from '@salesforce/apex/SettlementController.setSettlement';

export default class Settlement extends LightningElement {
    @track secondPage = false;
    @track firstPage = false;
    @track thirdPage = false;
    @api clientName;
    @api companyName;
    @track emailId;
    @track stepValue = '1';
    firstPage = true;


    nameInpChange(event){
       this.clientName = event.target.value;
       
     }
 
     companyInpChange(event){
       this.companyName = event.target.value;
       
    }
    
     emailInpChange(event){
        this.emailId = event.target.value;
        
      }

    handleClickOfNext(){
        try{
       
        if(this.stepValue === '1'){
            console.log('inside stepValue 1');
            console.log('inside stepValue-> '+this.stepValue);
        this.secondPage = true;
        this.firstPage = false;
        this.stepValue = '2';
        console.log('inside stepValue1-> '+stepValue);
        }
        if(this.stepValue === '2'){
            console.log('inside stepValue 2');
            this.secondPage = false;
            this.firstPage = false;
            this.thirdPage = true;
            this.stepValue = '3';
            console.log('inside stepValue2-> '+stepValue);
            }
    }
    catch(err){
        console.err('JS error in next...');
        
    }
}

    handleClickOfSave(event){
        try{
            console.log('clientName-> '+this.clientName);
            console.log('companyName-> '+this.companyName);
            console.log('emailId-> '+this.emailId);
            setSettlement({
                clientName : this.clientName,
                companyName : this.companyName,
                emailId : this.emailId
            })
            .then(() => {
            window.location.reload();
            })
        }
        catch(err){
            console.err('JS error in saving...');
            
        }
    }
      
    

}