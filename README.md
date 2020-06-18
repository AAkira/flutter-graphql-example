# Flutter GraphQL Example

Flutter GraphQL example

![screenshot][screenshot]

## Using libraries

* [flutter_graphql](https://pub.dev/packages/flutter_graphql)
* [artemis](https://pub.dev/packages/artemis)
* [provider](https://pub.dev/packages/provider)
* [freezed](https://pub.dev/packages/freezed)
* [json_serializable](https://pub.dev/packages/json_serializable)
* [build_runner](https://pub.dev/packages/build_runner)

### API Server

* [graphcountries](https://github.com/lennertVanSever/graphcountries)
  - [API](https://countries-274616.ew.r.appspot.com)

## Architecture

```
-------      -------------------      ------------       ------------------
| View | <=> |    ViewModel     | <=> | Repository | <=> |    API Client   |
|      |     | (ChangeNotifier) |     |            |     | (GraphQLClient) |
-------      -------------------       ------------       -----------------

```

## Blog post

I'm sorry for this post being in Japanese only.

http://aakira.app/blog/2020/06/flutter-graphql

[screenshot]: /arts/screen_shot.gif
