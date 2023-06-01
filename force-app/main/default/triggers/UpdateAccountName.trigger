trigger UpdateAccountName on Contact (after insert,before update) {
    
    updateAccountName.display(trigger.new);

}