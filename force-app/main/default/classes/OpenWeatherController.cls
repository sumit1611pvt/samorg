public class OpenWeatherController {
    
    @AuraEnabled
    public static String  getWeatherReport(String lat, String longt){
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://api.openweathermap.org/data/2.5/weather?lat=' + lat +'&lon='+longt + '&appid=3c5ee45aa281bd7cddd7a69234a83d58');
        req.setMethod('GET');
        Http http = new Http();
        HTTPResponse res = http.send(req);
        System.debug(res.getBody());
        return res.getBody();
    }
    
}