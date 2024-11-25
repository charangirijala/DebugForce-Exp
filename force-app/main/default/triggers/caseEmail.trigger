trigger caseEmail on Case(before insert) {
  if (Trigger.isBefore) {
    if (Trigger.isInsert) {
      Map<String, Id> caseEmail = new Map<String, Id>();
      for (Case c : Trigger.new) {
        if (c.SuppliedEmail != null) {
          caseEmail.put(c.SuppliedEmail, c.Id);
        }
      }
      Set<String> exsistingId = new Set<String>();
      for (Contact con : [
        SELECT Id, Email
        FROM Contact
        WHERE Email IN :caseEmail.keySet()
      ]) {
        if (caseEmail.containsKey(con.Email)) {
          Id caseId = caseEmail.get(con.Email);
          Case c = Trigger.newMap.get(caseId);
          c.ContactId = con.Id;
          exsistingId.add(con.Email);
        }
      }
    }
  }
}
