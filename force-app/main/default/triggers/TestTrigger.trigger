trigger TestTrigger on Contact (after insert) {
    if(trigger.isafter && trigger.isinsert){
        Ratingcalculate.display(trigger.new);
    }
}