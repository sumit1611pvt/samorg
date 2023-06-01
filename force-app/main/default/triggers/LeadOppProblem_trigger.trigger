trigger LeadOppProblem_trigger on Lead (after update) {
    LeadOppProblem.display(trigger.new);

}