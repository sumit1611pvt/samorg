public without sharing class ClassB {
    public static List<Account> getAllAccount(){
        return [Select Id, Name From Account Limit 10];
    }

}