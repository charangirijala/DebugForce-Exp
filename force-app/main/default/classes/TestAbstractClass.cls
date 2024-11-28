//abstract class
public abstract class TestAbstractClass {
  /*
   * Upon creating an abstract class,
   * we need to use the abstract definition modifier.
   * An abstract class can contain methods that only have a signature and are defined as abstract.
   * Child Class must implement all methods declared as abstract!
   */

  private String test1;
  public String test2;

  public TestAbstractClass(String s1, String s2) {
    this.test1 = s1;
    this.test2 = s2;
  }

  abstract public String myAbstractMethod();

  public virtual String myVirtualMethod() {
    return 'Virutal method';
  }

  public String myNormalClass() {
    System.debug(this.test1 + this.test2);
    return this.test1 + this.test2;
  }
}
