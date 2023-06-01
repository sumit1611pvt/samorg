trigger UpdateCampaign on Campaign ( after update) {
    if(Trigger.isAfter &&  Trigger.isUpdate) {
        CampaignQ.display(Trigger.new);
    }
}