trigger LeadConvertProblem on Lead (after update) {
    LeadConvertProblem.display(trigger.new);
      LeadConvert.LeadConversion(trigger.new);

}