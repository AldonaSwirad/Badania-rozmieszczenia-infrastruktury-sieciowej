prz = Node([50 1 15],[21 59 19]);
uw = Node([52 14 25],[21 1 7]);
mit = Node([42 21 36],[-71 5 36]);
rpa = Node([-29 46 25],[23 16 15]);

prz.setId("PRz")
uw.setId("UW")
mit.setId("MIT")
rpa.setId("RPA")

MyNet = Net([prz, mit, uw, rpa], [prz mit; uw prz; prz rpa]);
draw_graph(MyNet);

prz.coords("rad")
mit.coords("deg")
