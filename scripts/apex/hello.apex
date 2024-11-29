// Account a = new Account();
// Schema.SObjectType type = a.getSObjectType();
// System.debug(type);

// List<SObject> objs = [SELECT Id, Name FROM Account LIMIT 10];

// System.debug(objs.getSObjectType());

// SObject s = new Account();
// System.debug(s.getSObjectType().getDescribe());

// Schema.DescribeFieldResult dfr = Schema.SObjectType.Account.fields.Name;
// System.debug(dfr);

// Schema.SObjectField field = Account.Name;
// System.debug(field);

// Schema.DescribeFieldResult dfr = field.getDescribe();
// System.debug(dfr);

//get all fields

// Map<String, Schema.SObjectField> mp = Schema.SObjectType.Account.fields.getMap();

// for (String key : mp.keySet()) {
//   System.debug(key + '->' + mp.get(key).getDescribe());
// }

// Map<String, Schema.SObjectType> gd = Schema.getGlobalDescribe();

// System.debug(gd.size());

String testString = 'TestName';
List<SObject> res = Database.query(
  'SELECT Id FROM Account WHERE Name = :testString'
);

System.debug(res.getSObjectType());
// AggregateResult[] args = [
//   SELECT SUM(Amount) sum, Account.Name
//   FROM Opportunity
//   GROUP BY Account.Name
// ];

// for (AggregateResult ar : args) {
//   Decimal sum = (Decimal) ar.get('sum');
//   String accNam = (String) ar.get('Name');
//   System.debug('Acc: ' + accNam + ' avg: ' + sum);
// }

// List<List<SObject>> res = [
//   FIND 'Bu*'
//   IN ALL FIELDS
//   RETURNING Contact(Id, Name, Account.Name)
// ];
// List<Contact> cons = (List<Contact>) res[0];

// for (Contact con : cons) {
//   System.debug('Contact:' + con.Account.Name);
// }

// List<List<SObject>> res = [
//   FIND 'Map*'
//   IN ALL FIELDS
//   RETURNING Contact(Id, Name), Account, Opportunity, Lead
// ];

// List<Contact> cons = (List<Contact>) res[0];
// List<Account> acs = (List<Account>) res[1];
// List<Opportunity> opps = (List<Opportunity>) res[2];
// List<String> s = new List<String>();
// s.add('a');
// s.add('b');
// s.add('c');
// s.add('d');
// customIterator itr = new customIterator(s);

// while (itr.hasNext()) {
//   String str = (String) itr.next();
//   System.debug(str);
// }

// customIterable itrble = new customIterable(s);

// for (Object itr : itrble) {
//   System.debug(itr);
// }
// try {
//   Contact con = [
//     SELECT Account.Name
//     FROM Contact
//     WHERE FirstName = 'Joe' AND LastName = 'Smith'
//     LIMIT 1
//   ];

//   con.Phone = '1234';
//   con.Account.Industry = 'Technology';

//   update con;
//   update con.Account;
// } catch (DmlException e) {
//   System.debug('Error occured' + e.getMessage());
// }

// List<Account> acts = new List<Account>{
//   new Account(Name = 'Test Acc'),
//   new Account()
// };

// Account ac = [
//   SELECT Id
//   FROM Account
//   WHERE Id = '001dL00000HQ7cMQAT'
//   FOR UPDATE
// ];

// Database.SaveResult[] res = Database.insert(acts, false);

// for (Database.SaveResult obj : res) {
//   if (obj.isSuccess()) {
//     System.debug('Inserted : ' + obj.getId());
//   } else {
//     for (Database.Error err : obj.getErrors()) {
//       System.debug('Following Error occured: ' + err.getMessage());
//     }
//   }
// }

// Date myDate = Date.newInstance(1960, 10, 10);
// System.debug(myDate);
// Date.valueOf()
// List<String> list1 = new List<String>();
// list1.add('Hi');
// list1.add('Hello');

// list1.remove(1);

// System.debug(list1);

// set<Integer> st = new Set<Integer>();

// st.add(12);
// st.add(112);
// st.add(122);

// System.debug(st);

// for (Integer it : st) {
//   System.debug(it);
// }

// Map<String, String> myStrings = new Map<String, String>{
//   'abc' => 'abc',
//   'abs' => 'abd'
// };

// for (String s : myStrings.keySet()) {
//   System.debug('String s: ' + myStrings.get(s));
// }

// // myStrings.containsKey('abc')

// myStrings.remove(1);

// List<System.LoggingLevel> levels = System.LoggingLevel.values();

// for (System.LoggingLevel level : levels) {
//   System.debug('Level: ' + level);
// }

// List<Integer> myList = new List<Integer>();
// myList.add(1);
// myList.add(2);
// myList.add(223);
// myList.add(3);

// myList.sort();

// properties prop = new properties();

// prop.writeOnlyProp = 'abc';

// prop.readWriteProp = 10;

// // System.debug(prop.writeOnlyProp);
// System.debug(prop.readOnlyProp);
// System.debug(prop.readWriteProp);

// createChildClass c = new createChildClass('a', 'b');
// c.myAbstractMethod();
// c.myNormalClass();
// c.myVirtualMethod();
