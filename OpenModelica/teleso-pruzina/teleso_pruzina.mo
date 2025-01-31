model teleso_pruzina
  Modelica.Mechanics.Translational.Components.Fixed ZEM annotation(
    Placement(transformation(origin = {-16, 62}, extent = {{-16, -16}, {16, 16}}, rotation = 180)));
  Modelica.Mechanics.Translational.Components.Spring pruzina(c = 1, s_rel(start = 0), s_rel0 = 1)  annotation(
    Placement(transformation(origin = {-15, 31}, extent = {{-17, -17}, {17, 17}}, rotation = -90)));
  Modelica.Mechanics.Translational.Components.Mass teleso(m = 1)  annotation(
    Placement(transformation(origin = {-15, -15}, extent = {{-15, -15}, {15, 15}}, rotation = -90)));
equation
  connect(pruzina.flange_a, ZEM.flange) annotation(
    Line(points = {{-14, 48}, {-16, 48}, {-16, 62}}, color = {0, 127, 0}));
  connect(teleso.flange_a, pruzina.flange_b) annotation(
    Line(points = {{-14, 0}, {-14, 14}}, color = {0, 127, 0}));

annotation(
    uses(Modelica(version = "4.0.0")));
end teleso_pruzina;
