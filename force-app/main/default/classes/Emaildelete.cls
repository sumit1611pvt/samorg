public class Emaildelete {
    public static void test()
    {
        List<EmailMessage> lst = [Select ToAddress From EmailMessage];
        system.debug(lst);
          Delete lst;
    }

}