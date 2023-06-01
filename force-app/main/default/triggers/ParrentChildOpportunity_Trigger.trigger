trigger ParrentChildOpportunity_Trigger on Opportunity (after update) {
    
     if(ParrentChildOpportunity.flag == true){
        if(Trigger.isAfter && Trigger.isUpdate )
        {
            ParrentChildOpportunity.flag = false;
    ParrentChildOpportunity.display(trigger.new);

}
     }
}