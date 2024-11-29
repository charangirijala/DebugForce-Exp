public class createChildClass extends TestVirtualClass {
  public createChildClass(String s1, String s2) {
    super(s1, s2);
  }

  public override String myVirtualMethod() {
    System.debug('Virtual method overridden in child class!');
    return 'Virtual method overridden in child class!';
  }
}
