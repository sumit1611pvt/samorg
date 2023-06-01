trigger UpdateNoOfProductSold on Opportunity (after update) {
    if(trigger.isafter && trigger.isUpdate)
        productSold.display(trigger.new);
}