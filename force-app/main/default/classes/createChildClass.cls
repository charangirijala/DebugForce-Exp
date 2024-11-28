public class createChildClass extends TestAbstractClass {
  public createChildClass(String s1, String s2) {
    super(s1, s2);
  }
  public override String myAbstractMethod() {
    System.debug('Abstract method implemented in child class!');
    return 'Abstract method implemented in child class!';
  }

  public override String myVirtualMethod() {
    System.debug('Virtual method overridden in child class!');
    return 'Virtual method overridden in child class!';
  }
}
