public class customIterable implements Iterable<Object> {
  private List<Object> objs;
  public customIterable(List<Object> objs) {
    this.objs = objs;
  }

  public Iterator<Object> iterator() {
    return new customIterator(objs);
  }
}
