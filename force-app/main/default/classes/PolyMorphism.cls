public class PolyMorphism {
  public static void processuser(Account us) {
    System.debug('Processed User');
  }

  public static void processGroup(Opportunity grp) {
    System.debug('Processed group');
  }

  public static void processOwner() {
    List<Task> tasks = [
      SELECT
        TYPEOF What
          WHEN Account THEN Phone, NumberOfEmployees
          WHEN Opportunity THEN Amount, CloseDate
          ELSE Name, Email
        END
      FROM Task
    ];

    for (Task t : tasks) {
      if (t.What instanceof Account) {
        System.debug('Account instance');
      } else if (t.What instanceof Opportunity) {
        System.debug('Opp Instance');
      }
    }
  }
}
