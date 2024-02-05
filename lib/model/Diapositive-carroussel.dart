import 'package:qici/utils/appTheme.dart';

class Dispositive {
  final String imageUrl;
  final String title;
  final String description;

  Dispositive({
    required this.imageUrl,
    required this.description,
    required this.title,
  });
}

final DispositiveList = [
  Dispositive(
    title: 'Gérez Votre Entreprise, Simplifiez Votre Vie',
    imageUrl: AppTheme.assetSvg.spreadsheet,
    description:
        'Optimisez vos opérations commerciales avec des fonctionnalités simples et puissantes. ',
  ),
  Dispositive(
    title: 'Contrôle Vocal Intuitif',
    imageUrl: AppTheme.assetSvg.ideas,
    description:
        "Parlez pour agir ! Contrôlez l'application de manière intuitive avec votre voix. ",
  ),
  Dispositive(
    title: 'Abonnement Facile, Gestion Sans Souci ',
    imageUrl: AppTheme.assetSvg.stripe_payments,
    description:
        'Choisissez un plan, payez par mobile money, et commencez à gérer sans souci. ',
  ),
  Dispositive(
    title: 'Commencez Votre Voyage Commercial ',
    imageUrl: AppTheme.assetSvg.business,
    description:
        'Explorez dès maintenant ! Votre voyage vers une gestion commerciale efficace commence ici',
  ),
];
