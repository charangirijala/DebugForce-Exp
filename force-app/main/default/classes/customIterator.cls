public class customIterator implements Iterator<Object> {
  private List<Object> objs;
  private Integer index;
  public customIterator(List<Object> objs) {
    this.objs = objs;
    this.index = 0;
  }

  public Boolean hasNext() {
    return index < objs.size();
  }

  public Object next() {
    if (hasNext()) {
      return objs[index++];
    }

    return null;
  }
}
