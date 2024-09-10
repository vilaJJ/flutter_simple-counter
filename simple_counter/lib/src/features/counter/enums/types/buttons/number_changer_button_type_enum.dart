enum NumberChangerButtonType {
  decreased(
    name: "Diminuir",
  ),
  incresead(
    name: "Aumentar",
  );

  final String name;

  const NumberChangerButtonType({
    required this.name,
  });
}
