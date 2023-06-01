({
    doInit : function(component, event, helper) {
        var url = $A.get('$Resource.sunsetImage1');
        component.set('v.backgroundImageURL', url);
        
         var url2 = $A.get('$Resource.temp1');
        component.set('v.tempratureImageURL', url2);
        
        
         var latitude='';
        var longitude='';
        navigator.geolocation.getCurrentPosition(getLatLon);
        function getLatLon(position) {
             latitude = position.coords.latitude;
             longitude = position.coords.longitude;
            console.log("Latitude is "+latitude);
            console.log("Longitude is "+longitude);
        
        
        
              
       
        var action = component.get('c.getWeatherReport');
        action.setParams({ lat : latitude,
                           longt : longitude
                         });
        
        action.setCallback(this, function(response){
            console.log('respose-> '+JSON.stringify(response.getReturnValue()));
            //component.set('v.response',response.getReturnValue());
            var responseData = JSON.parse(response.getReturnValue());
            component.set('v.response',responseData);
            component.set('v.temp',parseFloat(responseData.main.temp)-273);
            component.set('v.feels_like',parseFloat(responseData.main.feels_like)-273);
             component.set('v.temp_min',parseFloat(responseData.main.temp_min)-273);
            component.set('v.temp_max',parseFloat(responseData.main.temp_max)-273);
            component.set('v.pressure',responseData.main.pressure);
            
             component.set('v.speed',responseData.wind.speed);
             component.set('v.country',responseData.sys.country);
            
            console.log('temprature: ' +component.get('v.temp'));
            console.log('wind: ' +component.get('v.speed'));
            console.log('sys: ' +component.get('v.country'));
             console.log(responseData.name );//'title '+response.name +', '+response.sys.country)
            
            component.set('v.mapMarkers', [
            {
                location: {
                    Latitude: latitude,
                    Longitude: longitude,
                   // Street: '415 Mission St',
                   // City: 'San Francisco',
                  // State: 'CA'
                },
              
                title: (responseData.name +', '+responseData.sys.country), 
                description: 'demo'
            }
        ]);
            
           
            
            
        });
        $A.enqueueAction(action);
        }
        
    }
})