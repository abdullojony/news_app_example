// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArticleModel> _$articleModelSerializer =
    new _$ArticleModelSerializer();

class _$ArticleModelSerializer implements StructuredSerializer<ArticleModel> {
  @override
  final Iterable<Type> types = const [ArticleModel, _$ArticleModel];
  @override
  final String wireName = 'ArticleModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ArticleModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlToImage;
    if (value != null) {
      result
        ..add('urlToImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.publishedAt;
    if (value != null) {
      result
        ..add('publishedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ArticleModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'urlToImage':
          result.urlToImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ArticleModel extends ArticleModel {
  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? urlToImage;
  @override
  final String? publishedAt;
  @override
  final String? content;

  factory _$ArticleModel([void Function(ArticleModelBuilder)? updates]) =>
      (new ArticleModelBuilder()..update(updates))._build();

  _$ArticleModel._(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content})
      : super._();

  @override
  ArticleModel rebuild(void Function(ArticleModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleModelBuilder toBuilder() => new ArticleModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleModel &&
        author == other.author &&
        title == other.title &&
        description == other.description &&
        url == other.url &&
        urlToImage == other.urlToImage &&
        publishedAt == other.publishedAt &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, urlToImage.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticleModel')
          ..add('author', author)
          ..add('title', title)
          ..add('description', description)
          ..add('url', url)
          ..add('urlToImage', urlToImage)
          ..add('publishedAt', publishedAt)
          ..add('content', content))
        .toString();
  }
}

class ArticleModelBuilder
    implements Builder<ArticleModel, ArticleModelBuilder> {
  _$ArticleModel? _$v;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _urlToImage;
  String? get urlToImage => _$this._urlToImage;
  set urlToImage(String? urlToImage) => _$this._urlToImage = urlToImage;

  String? _publishedAt;
  String? get publishedAt => _$this._publishedAt;
  set publishedAt(String? publishedAt) => _$this._publishedAt = publishedAt;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ArticleModelBuilder();

  ArticleModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _author = $v.author;
      _title = $v.title;
      _description = $v.description;
      _url = $v.url;
      _urlToImage = $v.urlToImage;
      _publishedAt = $v.publishedAt;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticleModel;
  }

  @override
  void update(void Function(ArticleModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleModel build() => _build();

  _$ArticleModel _build() {
    final _$result = _$v ??
        new _$ArticleModel._(
            author: author,
            title: title,
            description: description,
            url: url,
            urlToImage: urlToImage,
            publishedAt: publishedAt,
            content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
