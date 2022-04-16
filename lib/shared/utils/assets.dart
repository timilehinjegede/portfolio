const String baseSvgPath = 'assets/images/svgs/';
const String basePngPath = 'assets/images/pngs/';

// pngs
final String icAvatar = 'ic_avatar'.png;

//logos pngs
final String icGithub = 'ic_github'.svg;
final String icGmail = 'ic_gmail'.svg;
final String icLinkedIn = 'Ic_linkedIn'.svg;
final String icStackoverflow = 'ic_stackoverflow'.svg;
final String icTwitter = 'ic_twitter'.svg;

// extensions
extension ImageExtension on String {
  String get png => '$basePngPath$this.png';
  String get svg => '$baseSvgPath$this.svg';
  String get logosPng => '$basePngPath/logos$this.svg';
}
