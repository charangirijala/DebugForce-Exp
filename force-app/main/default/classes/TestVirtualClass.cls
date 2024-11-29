public virtual class TestVirtualClass {
  protected String test1;
  public String test2;

  public TestVirtualClass() {
  }

  public TestVirtualClass(String test1, String test2) {
    this.test1 = test1;
    this.test2 = test2;
  }

  public virtual String myVirtualMethod() {
    System.debug('virtual method from virtual class');
    return 'virtual method from virtual class';
  }

  private String myPrivateMethod() {
    return 'private method from virtual class';
  }

  protected String myProtectedMethod() {
    return 'protected method from virtual class';
  }

  public String myPublicMethod() {
    return 'public method from virtual class';
  }
}
