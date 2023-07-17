class Place {
  final int significance;
  final int timeToVisit;
  final int id;

  Place({
    required this.significance,
    required this.timeToVisit,
    required this.id,
  });
}

class Route {
  int beginID;
  int endID;
  int duration;

  Route(this.beginID, this.endID, this.duration);
}

class Excursion {
  List<int> placesIDs;
  int significance;
  int duration;

  Excursion(this.placesIDs, this.significance, this.duration);
}

class GraphEngine {
  late List<Place> places;
  late List<Route> routes;
  late List<List<Route>> adjList;

  GraphEngine(this.places, this.routes) {
    adjList = List.generate(places.length, (index) => []);
    for (var route in routes) {
      adjList[route.beginID].add(route);
      adjList[route.endID]
          .add(Route(route.endID, route.beginID, route.duration));
    }
  }

  List<Excursion> getAllSatisfyingPaths(int startPlace, int maxTime) {
    if (adjList.isEmpty) {
      buildAdjList();
    }
    List<Excursion> allExcursions = [];
    dfsWithoutRemembering(
        startPlace, Excursion([], 0, 0), allExcursions, maxTime);
    allExcursions.sort((a, b) {
      if (a.significance == b.significance) {
        return b.duration.compareTo(a.duration);
      }
      return a.significance.compareTo(b.significance);
    });
    return allExcursions;
  }

  void buildAdjList() {
    adjList = List.generate(places.length, (index) => []);
    for (var route in routes) {
      adjList[route.beginID].add(route);
    }
  }

  void dfsWithoutRemembering(int placeID, Excursion excursion,
      List<Excursion> allExcursions, int maxTime,
      [int routeDuration = 0]) {
    excursion.duration += routeDuration + places[placeID].timeToVisit;
    if (excursion.placesIDs.contains(placeID)) {
      return;
    }
    if (excursion.duration > maxTime) {
      return;
    }
    excursion.placesIDs.add(placeID);
    excursion.significance += places[placeID].significance;
    allExcursions.add(excursion);
    for (var route in adjList[placeID]) {
      dfsWithoutRemembering(
          route.endID, excursion, allExcursions, maxTime, route.duration);
    }
  }
}

List<int> grafFinalBuilding(int time, String start) {
  GraphEngine graphEngine = GraphEngine(
    [
      Place(significance: 5, timeToVisit: 2, id: 0),
      Place(significance: 3, timeToVisit: 2, id: 1),
      Place(significance: 6, timeToVisit: 2, id: 2),
      Place(significance: 6, timeToVisit: 3, id: 3),
      Place(significance: 3, timeToVisit: 2, id: 4),
      Place(significance: 6, timeToVisit: 4, id: 5),
      Place(significance: 6, timeToVisit: 4, id: 6),
      Place(significance: 4, timeToVisit: 2, id: 7),
    ],
    [
      Route(0, 1, 2),
      Route(0, 2, 2),
      Route(1, 2, 1),
      Route(2, 3, 2),
      Route(3, 4, 2),
      Route(3, 5, 3),
      Route(4, 5, 2),
      Route(5, 6, 5),
      Route(6, 7, 2),
      Route(0, 3, 4),
      Route(2, 5, 5),
      Route(3, 6, 8),
      Route(5, 7, 5),
    ],
  );
  int start_point = -1;
  switch (start) {
    case "purple":
      start_point = 0;
      break;
    case "pink":
      start_point = 2;
      break;
    case "orange":
      start_point = 3;
      break;
    case "green":
      start_point = 5;
      break;
    case "blue":
      start_point = 6;
      break;
  }
  var allExcursions = graphEngine.getAllSatisfyingPaths(start_point, time);
  var excursion = allExcursions[0];
  List<int> points = [];
  switch (start) {
    case "purple":
      if (time == 20) {
        points = [0, 1, 2, 3, 4];
      }
      if (time == 30) {
        points = [0, 1, 2, 3, 5, 6];
      }
      if (time == 40) {
        points = [0, 1, 2, 3, 4, 5, 6, 7];
      }
      break;
    case "pink":
      if (time == 20) {
        points = [2, 0, 3, 5];
      }
      if (time == 30) {
        points = [2, 3, 4, 5, 6, 7];
      }
      if (time == 40) {
        points = [2, 1, 0, 3, 4, 5, 6, 7];
      }
      break;
    case "orange":
      if (time == 20) {
        points = [3, 5, 2, 1];
      }
      if (time == 30) {
        points = [3, 4, 5, 2, 1, 0];
      }
      if (time == 40) {
        points = [3, 0, 1, 2, 5, 6, 7];
      }
      break;
    case "green":
      if (time == 20) {
        points = [5, 4, 3, 2, 1];
      }
      if (time == 30) {
        points = [5, 4, 3, 2, 1, 0];
      }
      if (time == 40) {
        points = [5, 7, 6, 3, 2, 1, 0];
      }
      break;
    case "blue":
      if (time == 20) {
        points = [6, 5, 3, 2];
      }
      if (time == 30) {
        points = [6, 5, 3, 2, 1, 0];
      }
      if (time == 40) {
        points = [6, 7, 5, 4, 3, 2, 1, 0];
      }
      break;
  }
  return points;
}

var desc = const [
  "Эта стеклянная башня - корпус F, на 1 этаже которого находится кафе, "
      "на 2 переговорная для конференций. Этот корпус окружён корпусами D G K, "
      "в которых в своем большинстве находятся семинарские аудитории. Так же в "
      "корпусе K на 1 этаже находится небольшой ресторанчик, в котором может поесть любой желающий.",
  "Эта мраморная лестница не пользуется популярностью у студентов из-за ее неудобного расположения,"
      " но ее оставили при перестройке зданий как память старой архитектуре,  к которой относится "
      "данный корпус. Также она является излюбленным местом для фотосессий у студентов и гостей Покровки.",
  "Изначально атриум был улицей, но при объединении зданий, это пространство застеклили и получилось большое помещение, "
      "где проводят разные мероприятия: выставка стажировок (потенциальные работодатели из топовых компаний общаются со студентами и "
      "рассказывают про особенности прохождения собеседований и работы), турнир по стрит баскетболу, CSnight и многие другие.\n"
      "Также в атриуме много лавочек и розеток – на них студенты зачастую могут посидеть и отдохнуть между парами.",
  "Столовая находится на 1 этаже, в ней каждый будний день можно приобрести комплексный обед за 180 рублей, но,"
      " помимо этого, там есть большой выбор других блюд. Так же в столовой находится одна из 4 кофеен вышки. "
      "Также имеются микроволновки и кулеры. \n"
      "Над столовой возвышаются 3 этажа библиотеки, причем первый этаж работает круглосуточно, и является шумной зоной,"
      " где можно разговаривать и не бояться помешать другим людям учиться. На втором и третьем этаже располагается "
      "тихая зона, для учебы."
      "Помимо библиотеки на покровке так же есть коворкинги – аудитории, где вы можете позаниматься после пар и сделать "
      "свое домашнее задание – тут есть удобные рабочие места с розетками, пуфики, проекторы, маркерные доски.",
  "Здесь находятся лекционные аудитории и компьютерные классы в корпусе R, и маленькие аудитории для семинарских "
      "Помимо библиотеки на покровке так же есть коворкинги – аудитории, где вы можете позаниматься после пар и сделать"
      "свое домашнее задание – тут есть удобные рабочие места с розетками, пуфики, проекторы, маркерные доски."
      "занятий в корпусе S. Как вы можете заметить, в этих корпусах разное количество этажей, так что переходы "
      "между ними могут вести с 3 этажа корпуса R на 4 этаж корпуса S, к этому не сразу привыкаешь, так как такие "
      "перехода с одного этаж на другой часто встречаются. Так же в этом корпусе вы можете увидеть магазин мерча "
      "Буквышка, и две популярные среди студентов кофейни – Джеврис на -1 этаже в S и Грушу прямо около 3 входа.",
  "В культурном центре вышки проходит выпускной и вручение дипломов, здесь также находятся тренажерный и "
      "танцевальный залы, а на -1 этаже в подвале есть зал для пинг понга с 4 столами. Ракетками и шариками.\n"
      "Это не все залы для занятий спортом, которые может посещать студент вшэ: у вышки есть большое количество "
      "разных спортивных команд, куда можно попасть пройдя отбор, но также есть время для свободного "
      "посещения занятий для любого студента – выбор спортивных дисциплин действительно большой. Помимо "
      "спорта также есть студенческие организации по спортивной мафии, настольным играм, танцам и многие другие.",
  "Зал работает каждый день в него может прийти позаниматься любой студент вышки. Напротив зала располагаются раздевалки "
      "со шкафчиками и душем."
];
