enum AppFontSize {
  displayLarge(48, 1.25),
  displayMedium(36, 1.2),
  displaySmall(30, 1.25),
  titleLarge(24, 1.33),
  titleMedium(20, 1.5),
  titleSmall(18, 1.55),
  bodyLarge(16, 1.5),
  bodyMedium(14, 1.4),
  bodySmall(12, 1.5);

  const AppFontSize(this.size, this.lineHeight);

  final double size;
  final double lineHeight;
}
