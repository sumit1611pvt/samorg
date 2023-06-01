({
    createChart : function (component) {
        var chartCanvas = component.find("chart").getElement();
        var action = component.get("c.getreport");
        //action.setParams({ReportName : component.get("v.reportName")}); use this if report name is passed dynamically
        action.setCallback(this, function(response) {
            //console.log('response--> '+JSON.parse(response.getReturnValue()));
            var state = response.getState();
            if (state === "SUCCESS") {
                var reportResultData = JSON.parse(response.getReturnValue());
                var chartData = [];
                var chartLabels = [];
                for(var i=0; i < (reportResultData.groupingsDown.groupings.length); i++){
                    //Iterate and prepare the list of Labels for the chart
                    var labelItem = reportResultData.groupingsDown.groupings[i].label;
                    chartLabels.push(labelItem);                    
                    var keyTemp = reportResultData.groupingsDown.groupings[i].key;
                    //Prepeare the chart data to be plotted.
                    var valueTemp = reportResultData.factMap[keyTemp + "!T"].aggregates[0].value;
                    chartData.push(valueTemp);
                }
                //Construct chart
                var chart = new Chart(chartCanvas,{
                    type: 'bar',
                    data: {
                        labels: chartLabels,
                        datasets: [
                            {
                                label: "Count",
                                data: chartData,
                                backgroundColor: [
                                    "#52BE80",
                                    "#76D7C4",
                                    "#1E8449",
                                    "#2ECC71",
                                    "#FFB74D",
                                    "#E67E22",
                                    "#F8C471",
                                    "#3498DB",
                                    "#00BCD4",
                                    "#D32F2F",
                                    "#82E0AA",
                                    "#AFB42B",
                                    "#52BE80",
                                    "#76D7C4",
                                    "#1E8449",
                                    "#2ECC71",
                                    "#FFB74D",
                                    "#E67E22",
                                    "#F8C471",
                                    "#3498DB",
                                    "#00BCD4",
                                    "#D32F2F",
                                    "#82E0AA",
                                    "#AFB42B"
                                ]
                            }
                        ]
                    },
                    options: {
                        responsive: true,
                        scales: {
                            
                            yAxes: [{
                                ticks: {
                                    min: 0,
                                    stepSize: 1,
                                }  
                            }]
                        },
                        maintainAspectRatio: false,
                        legend: {
                            display: false,
                            position:"right",
                            fullWidth:false,
                        }
                    }
                });
                
            } 
        });
        $A.enqueueAction(action);
    }
})