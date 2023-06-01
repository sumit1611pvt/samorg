trigger UpdateAccountStatus_trigger2 on Contact (after insert) {
   
   
    if(UpdateAccountStatus.flag==true) {
  UpdateAccountStatus.display(trigger.new);
      UpdateAccountStatus.flag=false;
}
}