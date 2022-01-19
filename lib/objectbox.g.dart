// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/models.dart';
import 'models/project_model.dart';
import 'models/user_model.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 6617148537054673531),
      name: 'Meetings',
      lastPropertyId: const IdUid(4, 138256843623200872),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6771481246093288817),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 7047051017792948151),
            name: 'meetingName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2230035124012970503),
            name: 'meetingTiming',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 138256843623200872),
            name: 'projectId',
            type: 11,
            flags: 520,
            indexId: const IdUid(1, 7884980372367702527),
            relationTarget: 'ProjectModel')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 1302856442515993372),
      name: 'People',
      lastPropertyId: const IdUid(5, 715191776623778149),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4079323626351883063),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 5130057290381968069),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 5382942550820741709),
            name: 'email',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3804397684441682782),
            name: 'team',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 715191776623778149),
            name: 'projectId',
            type: 11,
            flags: 520,
            indexId: const IdUid(2, 8650569263557110780),
            relationTarget: 'ProjectModel')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 2202272483574327466),
      name: 'ProjectModel',
      lastPropertyId: const IdUid(4, 5039734520460418230),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8617335805641470525),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3555976596573392789),
            name: 'projectName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8731995218958043426),
            name: 'teamName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5039734520460418230),
            name: 'meetingPlace',
            type: 30,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'peoples', srcEntity: 'People', srcField: ''),
        ModelBacklink(name: 'meetings', srcEntity: 'Meetings', srcField: '')
      ]),
  ModelEntity(
      id: const IdUid(4, 4306379556159748548),
      name: 'MeetingMinute',
      lastPropertyId: const IdUid(15, 7719832104359070704),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 911416988448476704),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3799132347568334134),
            name: 'meetingMinuteId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8216983543015200969),
            name: 'projectName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 7255936402337720321),
            name: 'meetingTitle',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6758771224635585184),
            name: 'meetingTime',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 9068586205103165428),
            name: 'meetingPlace',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 7361736814981615071),
            name: 'meetingAttendants',
            type: 30,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 3281202027395359461),
            name: 'meetingModerator',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 6260927784488719451),
            name: 'meetings',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 2911978854328417807),
            name: 'peopleList',
            type: 30,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 8216227820006502292),
            name: 'selectedAttendantInt',
            type: 30,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 6308532272612352345),
            name: 'agendaListToString',
            type: 30,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 7719832104359070704),
            name: 'todoCount',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(5, 8309330724015831085),
      name: 'User',
      lastPropertyId: const IdUid(5, 4295992619937190959),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1317175508844864921),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 2739146769061531922),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 3380272189955533309),
            name: 'password',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3492624052719435578),
            name: 'email',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 4295992619937190959),
            name: 'imagePath',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(8, 8273066848230542782),
      lastIndexId: const IdUid(5, 4480038054985413531),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [
        3208025670212046732,
        4080201189132424713,
        8273066848230542782
      ],
      retiredIndexUids: const [],
      retiredPropertyUids: const [
        2877214907635502003,
        8680834265877062191,
        5480477271106693442,
        2806569546393840775,
        6072458947920086728,
        8120484623728209518,
        3235445822835620930,
        3980403979140751640,
        7664830052598246407,
        8118950058492031650,
        2522374428913882980,
        9218305278267500476,
        6574570372885343081,
        8190208450730409,
        5406436219138372423,
        6954505269142059034,
        5568951169598398744,
        3804523211827769853,
        3989649022110392228,
        6619822177524408521,
        2329977911475069548,
        7252690334617411166,
        7600582381102329690
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Meetings: EntityDefinition<Meetings>(
        model: _entities[0],
        toOneRelations: (Meetings object) => [object.project],
        toManyRelations: (Meetings object) => {},
        getId: (Meetings object) => object.id,
        setId: (Meetings object, int id) {
          object.id = id;
        },
        objectToFB: (Meetings object, fb.Builder fbb) {
          final meetingNameOffset = fbb.writeString(object.meetingName);
          final meetingTimingOffset = fbb.writeString(object.meetingTiming);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, meetingNameOffset);
          fbb.addOffset(2, meetingTimingOffset);
          fbb.addInt64(3, object.project.targetId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Meetings(
              meetingName:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              meetingTiming:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          object.project.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);
          object.project.attach(store);
          return object;
        }),
    People: EntityDefinition<People>(
        model: _entities[1],
        toOneRelations: (People object) => [object.project],
        toManyRelations: (People object) => {},
        getId: (People object) => object.id,
        setId: (People object, int id) {
          object.id = id;
        },
        objectToFB: (People object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final emailOffset = fbb.writeString(object.email);
          final teamOffset = fbb.writeString(object.team);
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, emailOffset);
          fbb.addOffset(3, teamOffset);
          fbb.addInt64(4, object.project.targetId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = People(
              name:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              email:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''),
              team:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 10, ''))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          object.project.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 12, 0);
          object.project.attach(store);
          return object;
        }),
    ProjectModel: EntityDefinition<ProjectModel>(
        model: _entities[2],
        toOneRelations: (ProjectModel object) => [],
        toManyRelations: (ProjectModel object) => {
              RelInfo<People>.toOneBacklink(
                      5, object.id, (People srcObject) => srcObject.project):
                  object.peoples,
              RelInfo<Meetings>.toOneBacklink(
                      4, object.id, (Meetings srcObject) => srcObject.project):
                  object.meetings
            },
        getId: (ProjectModel object) => object.id,
        setId: (ProjectModel object, int id) {
          object.id = id;
        },
        objectToFB: (ProjectModel object, fb.Builder fbb) {
          final projectNameOffset = fbb.writeString(object.projectName);
          final teamNameOffset = fbb.writeString(object.teamName);
          final meetingPlaceOffset = fbb.writeList(
              object.meetingPlace.map(fbb.writeString).toList(growable: false));
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, projectNameOffset);
          fbb.addOffset(2, teamNameOffset);
          fbb.addOffset(3, meetingPlaceOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = ProjectModel(
              projectName:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              teamName:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''),
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0))
            ..meetingPlace =
                const fb.ListReader<String>(fb.StringReader(), lazy: false)
                    .vTableGet(buffer, rootOffset, 10, []);
          InternalToManyAccess.setRelInfo(
              object.peoples,
              store,
              RelInfo<People>.toOneBacklink(
                  5, object.id, (People srcObject) => srcObject.project),
              store.box<ProjectModel>());
          InternalToManyAccess.setRelInfo(
              object.meetings,
              store,
              RelInfo<Meetings>.toOneBacklink(
                  4, object.id, (Meetings srcObject) => srcObject.project),
              store.box<ProjectModel>());
          return object;
        }),
    MeetingMinute: EntityDefinition<MeetingMinute>(
        model: _entities[3],
        toOneRelations: (MeetingMinute object) => [],
        toManyRelations: (MeetingMinute object) => {},
        getId: (MeetingMinute object) => object.id,
        setId: (MeetingMinute object, int id) {
          object.id = id;
        },
        objectToFB: (MeetingMinute object, fb.Builder fbb) {
          final meetingMinuteIdOffset = fbb.writeString(object.meetingMinuteId);
          final projectNameOffset = fbb.writeString(object.projectName);
          final meetingTitleOffset = fbb.writeString(object.meetingTitle);
          final meetingTimeOffset = fbb.writeString(object.meetingTime);
          final meetingPlaceOffset = fbb.writeString(object.meetingPlace);
          final meetingAttendantsOffset = fbb.writeList(object.meetingAttendants
              .map(fbb.writeString)
              .toList(growable: false));
          final meetingModeratorOffset =
              fbb.writeString(object.meetingModerator);
          final meetingsOffset = fbb.writeString(object.meetings);
          final peopleListOffset = fbb.writeList(
              object.peopleList.map(fbb.writeString).toList(growable: false));
          final selectedAttendantIntOffset = fbb.writeList(object
              .selectedAttendantInt
              .map(fbb.writeString)
              .toList(growable: false));
          final agendaListToStringOffset = fbb.writeList(object
              .agendaListToString
              .map(fbb.writeString)
              .toList(growable: false));
          fbb.startTable(16);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, meetingMinuteIdOffset);
          fbb.addOffset(2, projectNameOffset);
          fbb.addOffset(3, meetingTitleOffset);
          fbb.addOffset(4, meetingTimeOffset);
          fbb.addOffset(5, meetingPlaceOffset);
          fbb.addOffset(6, meetingAttendantsOffset);
          fbb.addOffset(7, meetingModeratorOffset);
          fbb.addOffset(8, meetingsOffset);
          fbb.addOffset(10, peopleListOffset);
          fbb.addOffset(11, selectedAttendantIntOffset);
          fbb.addOffset(13, agendaListToStringOffset);
          fbb.addInt64(14, object.todoCount);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = MeetingMinute(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              projectName:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''),
              meetingMinuteId:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              meetingTitle:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 10, ''),
              meetingTime:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 12, ''),
              meetingPlace:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 14, ''),
              meetingAttendants: const fb.ListReader<String>(fb.StringReader(), lazy: false)
                  .vTableGet(buffer, rootOffset, 16, []),
              meetingModerator:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 18, ''),
              meetings:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 20, ''),
              selectedAttendantInt:
                  const fb.ListReader<String>(fb.StringReader(), lazy: false)
                      .vTableGet(buffer, rootOffset, 26, []),
              peopleList: const fb.ListReader<String>(fb.StringReader(), lazy: false)
                  .vTableGet(buffer, rootOffset, 24, []),
              agendaListToString: const fb.ListReader<String>(fb.StringReader(), lazy: false)
                  .vTableGet(buffer, rootOffset, 30, []),
              todoCount: const fb.Int64Reader().vTableGet(buffer, rootOffset, 32, 0));

          return object;
        }),
    User: EntityDefinition<User>(
        model: _entities[4],
        toOneRelations: (User object) => [],
        toManyRelations: (User object) => {},
        getId: (User object) => object.id,
        setId: (User object, int id) {
          object.id = id;
        },
        objectToFB: (User object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final passwordOffset = fbb.writeString(object.password);
          final emailOffset = fbb.writeString(object.email);
          final imagePathOffset = fbb.writeString(object.imagePath);
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, passwordOffset);
          fbb.addOffset(3, emailOffset);
          fbb.addOffset(4, imagePathOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = User(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              name:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              password:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''),
              email:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 10, ''),
              imagePath: const fb.StringReader()
                  .vTableGet(buffer, rootOffset, 12, ''));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Meetings] entity fields to define ObjectBox queries.
class Meetings_ {
  /// see [Meetings.id]
  static final id = QueryIntegerProperty<Meetings>(_entities[0].properties[0]);

  /// see [Meetings.meetingName]
  static final meetingName =
      QueryStringProperty<Meetings>(_entities[0].properties[1]);

  /// see [Meetings.meetingTiming]
  static final meetingTiming =
      QueryStringProperty<Meetings>(_entities[0].properties[2]);

  /// see [Meetings.project]
  static final project =
      QueryRelationToOne<Meetings, ProjectModel>(_entities[0].properties[3]);
}

/// [People] entity fields to define ObjectBox queries.
class People_ {
  /// see [People.id]
  static final id = QueryIntegerProperty<People>(_entities[1].properties[0]);

  /// see [People.name]
  static final name = QueryStringProperty<People>(_entities[1].properties[1]);

  /// see [People.email]
  static final email = QueryStringProperty<People>(_entities[1].properties[2]);

  /// see [People.team]
  static final team = QueryStringProperty<People>(_entities[1].properties[3]);

  /// see [People.project]
  static final project =
      QueryRelationToOne<People, ProjectModel>(_entities[1].properties[4]);
}

/// [ProjectModel] entity fields to define ObjectBox queries.
class ProjectModel_ {
  /// see [ProjectModel.id]
  static final id =
      QueryIntegerProperty<ProjectModel>(_entities[2].properties[0]);

  /// see [ProjectModel.projectName]
  static final projectName =
      QueryStringProperty<ProjectModel>(_entities[2].properties[1]);

  /// see [ProjectModel.teamName]
  static final teamName =
      QueryStringProperty<ProjectModel>(_entities[2].properties[2]);

  /// see [ProjectModel.meetingPlace]
  static final meetingPlace =
      QueryStringVectorProperty<ProjectModel>(_entities[2].properties[3]);
}

/// [MeetingMinute] entity fields to define ObjectBox queries.
class MeetingMinute_ {
  /// see [MeetingMinute.id]
  static final id =
      QueryIntegerProperty<MeetingMinute>(_entities[3].properties[0]);

  /// see [MeetingMinute.meetingMinuteId]
  static final meetingMinuteId =
      QueryStringProperty<MeetingMinute>(_entities[3].properties[1]);

  /// see [MeetingMinute.projectName]
  static final projectName =
      QueryStringProperty<MeetingMinute>(_entities[3].properties[2]);

  /// see [MeetingMinute.meetingTitle]
  static final meetingTitle =
      QueryStringProperty<MeetingMinute>(_entities[3].properties[3]);

  /// see [MeetingMinute.meetingTime]
  static final meetingTime =
      QueryStringProperty<MeetingMinute>(_entities[3].properties[4]);

  /// see [MeetingMinute.meetingPlace]
  static final meetingPlace =
      QueryStringProperty<MeetingMinute>(_entities[3].properties[5]);

  /// see [MeetingMinute.meetingAttendants]
  static final meetingAttendants =
      QueryStringVectorProperty<MeetingMinute>(_entities[3].properties[6]);

  /// see [MeetingMinute.meetingModerator]
  static final meetingModerator =
      QueryStringProperty<MeetingMinute>(_entities[3].properties[7]);

  /// see [MeetingMinute.meetings]
  static final meetings =
      QueryStringProperty<MeetingMinute>(_entities[3].properties[8]);

  /// see [MeetingMinute.peopleList]
  static final peopleList =
      QueryStringVectorProperty<MeetingMinute>(_entities[3].properties[9]);

  /// see [MeetingMinute.selectedAttendantInt]
  static final selectedAttendantInt =
      QueryStringVectorProperty<MeetingMinute>(_entities[3].properties[10]);

  /// see [MeetingMinute.agendaListToString]
  static final agendaListToString =
      QueryStringVectorProperty<MeetingMinute>(_entities[3].properties[11]);

  /// see [MeetingMinute.todoCount]
  static final todoCount =
      QueryIntegerProperty<MeetingMinute>(_entities[3].properties[12]);
}

/// [User] entity fields to define ObjectBox queries.
class User_ {
  /// see [User.id]
  static final id = QueryIntegerProperty<User>(_entities[4].properties[0]);

  /// see [User.name]
  static final name = QueryStringProperty<User>(_entities[4].properties[1]);

  /// see [User.password]
  static final password = QueryStringProperty<User>(_entities[4].properties[2]);

  /// see [User.email]
  static final email = QueryStringProperty<User>(_entities[4].properties[3]);

  /// see [User.imagePath]
  static final imagePath =
      QueryStringProperty<User>(_entities[4].properties[4]);
}
