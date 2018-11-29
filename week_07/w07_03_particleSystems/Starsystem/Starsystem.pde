class StarSystem {
  ArrayList <Star> starfield;

  StarSystem() {
    starfield = new ArrayList <Star>();
  }

  void addStar() {
      starfield.add(new Star());
  }
  
  void shine() {
    for (int i = 0; i < starfield.size(); i++) {
      Star s = starfield.get(i);
      s.update();
      s.display();

      if (s.isFar()) {
        //starfield.add(new Star());
        starfield.remove(i);
      }
    }
  }
}
