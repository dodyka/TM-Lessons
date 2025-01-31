model teleso_pruzina_tlmic
  Modelica.Mechanics.Translational.Components.Fixed zem(s0 = 0.25)  annotation(
    Placement(transformation(origin = {-46, 48}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Translational.Components.SpringDamper Pruzina_tlmic(c = 100000, d = 500, s_rel0 = 0.2)  annotation(
    Placement(transformation(origin = {-22, 48}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Mass teleso(m = 250, L = 0.75, s(start = 0.02, fixed = true), v(start = 0.5, fixed = true))  annotation(
    Placement(transformation(origin = {10, 48}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(Pruzina_tlmic.flange_a, zem.flange) annotation(
    Line(points = {{-32, 48}, {-46, 48}}, color = {0, 127, 0}));
  connect(teleso.flange_a, Pruzina_tlmic.flange_b) annotation(
    Line(points = {{0, 48}, {-12, 48}}, color = {0, 127, 0}));

annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, grid = {0, 0})),
  Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, grid = {0, 0})),
  version = "");
end teleso_pruzina_tlmic;
