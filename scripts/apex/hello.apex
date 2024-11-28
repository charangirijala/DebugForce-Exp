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

createChildClass c = new createChildClass('a', 'b');
c.myAbstractMethod();
c.myNormalClass();
c.myVirtualMethod();
