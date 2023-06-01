public class testDiffernceBetweenDates {
    public static void display(){
        contact con = [SELECT Id, name,createdDate from contact limit 1];
        account acc = [SELECT Id,createdDate,Name from account limit 1];
        //date dt = date.today();
        //Integer diff = Number(acc.createdDate)-Number(con.CreatedDate);
        //system.debug('diffence--> '+ (acc.createdDate - con.CreatedDate));
    }

}