import 'package:soccer_app/core/entities/tournament.dart';

class TournamentRepository {
  static List<Tournament> getTournaments() => List.generate(
        3,
        (index) => Tournament(
            id: index + 1,
            name: 'Torneo ${index + 1}',
            urlProfile:
                'https://www.publimetro.com.mx/resizer/JzvHXcX5ubf2axRYxERTRUqv9Ww=/800x0/filters:format(jpg):quality(70):focal(195x330:205x340)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/BTXGDWW7AJEN3IFA5IOJIDFODE.jpg',
            matchDay: 'sat'),
      );
}
