public class CountryCodeHelper {
  public static String getCountryCode(String country) {
      Country_Code__mdt CC = Country_Code__mdt.getInstance(country);
      system.debug('cc->'+cc);
      return cc.Country_Code__c;
  }
}