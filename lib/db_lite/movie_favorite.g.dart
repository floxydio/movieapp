// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_favorite.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMovieFavoriteCollection on Isar {
  IsarCollection<MovieFavorite> get movieFavorites => this.collection();
}

const MovieFavoriteSchema = CollectionSchema(
  name: r'MovieFavorite',
  id: -8237862557353096247,
  properties: {
    r'idFilm': PropertySchema(
      id: 0,
      name: r'idFilm',
      type: IsarType.long,
    ),
    r'judulFilm': PropertySchema(
      id: 1,
      name: r'judulFilm',
      type: IsarType.string,
    ),
    r'urlFilm': PropertySchema(
      id: 2,
      name: r'urlFilm',
      type: IsarType.string,
    )
  },
  estimateSize: _movieFavoriteEstimateSize,
  serialize: _movieFavoriteSerialize,
  deserialize: _movieFavoriteDeserialize,
  deserializeProp: _movieFavoriteDeserializeProp,
  idName: r'id',
  indexes: {
    r'idFilm': IndexSchema(
      id: -8741853134850685834,
      name: r'idFilm',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'idFilm',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _movieFavoriteGetId,
  getLinks: _movieFavoriteGetLinks,
  attach: _movieFavoriteAttach,
  version: '3.1.0+1',
);

int _movieFavoriteEstimateSize(
  MovieFavorite object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.judulFilm;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.urlFilm;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _movieFavoriteSerialize(
  MovieFavorite object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.idFilm);
  writer.writeString(offsets[1], object.judulFilm);
  writer.writeString(offsets[2], object.urlFilm);
}

MovieFavorite _movieFavoriteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MovieFavorite();
  object.id = id;
  object.idFilm = reader.readLongOrNull(offsets[0]);
  object.judulFilm = reader.readStringOrNull(offsets[1]);
  object.urlFilm = reader.readStringOrNull(offsets[2]);
  return object;
}

P _movieFavoriteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _movieFavoriteGetId(MovieFavorite object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _movieFavoriteGetLinks(MovieFavorite object) {
  return [];
}

void _movieFavoriteAttach(
    IsarCollection<dynamic> col, Id id, MovieFavorite object) {
  object.id = id;
}

extension MovieFavoriteByIndex on IsarCollection<MovieFavorite> {
  Future<MovieFavorite?> getByIdFilm(int? idFilm) {
    return getByIndex(r'idFilm', [idFilm]);
  }

  MovieFavorite? getByIdFilmSync(int? idFilm) {
    return getByIndexSync(r'idFilm', [idFilm]);
  }

  Future<bool> deleteByIdFilm(int? idFilm) {
    return deleteByIndex(r'idFilm', [idFilm]);
  }

  bool deleteByIdFilmSync(int? idFilm) {
    return deleteByIndexSync(r'idFilm', [idFilm]);
  }

  Future<List<MovieFavorite?>> getAllByIdFilm(List<int?> idFilmValues) {
    final values = idFilmValues.map((e) => [e]).toList();
    return getAllByIndex(r'idFilm', values);
  }

  List<MovieFavorite?> getAllByIdFilmSync(List<int?> idFilmValues) {
    final values = idFilmValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'idFilm', values);
  }

  Future<int> deleteAllByIdFilm(List<int?> idFilmValues) {
    final values = idFilmValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'idFilm', values);
  }

  int deleteAllByIdFilmSync(List<int?> idFilmValues) {
    final values = idFilmValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'idFilm', values);
  }

  Future<Id> putByIdFilm(MovieFavorite object) {
    return putByIndex(r'idFilm', object);
  }

  Id putByIdFilmSync(MovieFavorite object, {bool saveLinks = true}) {
    return putByIndexSync(r'idFilm', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByIdFilm(List<MovieFavorite> objects) {
    return putAllByIndex(r'idFilm', objects);
  }

  List<Id> putAllByIdFilmSync(List<MovieFavorite> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'idFilm', objects, saveLinks: saveLinks);
  }
}

extension MovieFavoriteQueryWhereSort
    on QueryBuilder<MovieFavorite, MovieFavorite, QWhere> {
  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhere> anyIdFilm() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'idFilm'),
      );
    });
  }
}

extension MovieFavoriteQueryWhere
    on QueryBuilder<MovieFavorite, MovieFavorite, QWhereClause> {
  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause> idFilmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'idFilm',
        value: [null],
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause>
      idFilmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'idFilm',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause> idFilmEqualTo(
      int? idFilm) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'idFilm',
        value: [idFilm],
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause>
      idFilmNotEqualTo(int? idFilm) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idFilm',
              lower: [],
              upper: [idFilm],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idFilm',
              lower: [idFilm],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idFilm',
              lower: [idFilm],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idFilm',
              lower: [],
              upper: [idFilm],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause>
      idFilmGreaterThan(
    int? idFilm, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'idFilm',
        lower: [idFilm],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause> idFilmLessThan(
    int? idFilm, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'idFilm',
        lower: [],
        upper: [idFilm],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterWhereClause> idFilmBetween(
    int? lowerIdFilm,
    int? upperIdFilm, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'idFilm',
        lower: [lowerIdFilm],
        includeLower: includeLower,
        upper: [upperIdFilm],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MovieFavoriteQueryFilter
    on QueryBuilder<MovieFavorite, MovieFavorite, QFilterCondition> {
  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      idFilmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idFilm',
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      idFilmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idFilm',
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      idFilmEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idFilm',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      idFilmGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idFilm',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      idFilmLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idFilm',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      idFilmBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idFilm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'judulFilm',
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'judulFilm',
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'judulFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'judulFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'judulFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'judulFilm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'judulFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'judulFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'judulFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'judulFilm',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'judulFilm',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      judulFilmIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'judulFilm',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'urlFilm',
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'urlFilm',
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'urlFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'urlFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'urlFilm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'urlFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'urlFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'urlFilm',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'urlFilm',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlFilm',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterFilterCondition>
      urlFilmIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'urlFilm',
        value: '',
      ));
    });
  }
}

extension MovieFavoriteQueryObject
    on QueryBuilder<MovieFavorite, MovieFavorite, QFilterCondition> {}

extension MovieFavoriteQueryLinks
    on QueryBuilder<MovieFavorite, MovieFavorite, QFilterCondition> {}

extension MovieFavoriteQuerySortBy
    on QueryBuilder<MovieFavorite, MovieFavorite, QSortBy> {
  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> sortByIdFilm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idFilm', Sort.asc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> sortByIdFilmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idFilm', Sort.desc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> sortByJudulFilm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'judulFilm', Sort.asc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy>
      sortByJudulFilmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'judulFilm', Sort.desc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> sortByUrlFilm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlFilm', Sort.asc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> sortByUrlFilmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlFilm', Sort.desc);
    });
  }
}

extension MovieFavoriteQuerySortThenBy
    on QueryBuilder<MovieFavorite, MovieFavorite, QSortThenBy> {
  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> thenByIdFilm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idFilm', Sort.asc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> thenByIdFilmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idFilm', Sort.desc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> thenByJudulFilm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'judulFilm', Sort.asc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy>
      thenByJudulFilmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'judulFilm', Sort.desc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> thenByUrlFilm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlFilm', Sort.asc);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QAfterSortBy> thenByUrlFilmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlFilm', Sort.desc);
    });
  }
}

extension MovieFavoriteQueryWhereDistinct
    on QueryBuilder<MovieFavorite, MovieFavorite, QDistinct> {
  QueryBuilder<MovieFavorite, MovieFavorite, QDistinct> distinctByIdFilm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idFilm');
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QDistinct> distinctByJudulFilm(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'judulFilm', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieFavorite, MovieFavorite, QDistinct> distinctByUrlFilm(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'urlFilm', caseSensitive: caseSensitive);
    });
  }
}

extension MovieFavoriteQueryProperty
    on QueryBuilder<MovieFavorite, MovieFavorite, QQueryProperty> {
  QueryBuilder<MovieFavorite, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MovieFavorite, int?, QQueryOperations> idFilmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idFilm');
    });
  }

  QueryBuilder<MovieFavorite, String?, QQueryOperations> judulFilmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'judulFilm');
    });
  }

  QueryBuilder<MovieFavorite, String?, QQueryOperations> urlFilmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'urlFilm');
    });
  }
}
