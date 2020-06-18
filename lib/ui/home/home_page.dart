import 'package:flutter/material.dart';
import 'package:fluttergraphql/data/model/country.dart';
import 'package:fluttergraphql/ui/home/home_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeModel>(
      create: (_) => HomeModel(
        context.read(),
      ),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GraphQL Example'),
        ),
        body: _contents(context));
  }

  Widget _contents(BuildContext context) {
    final List<Country> countries =
        context.select((HomeModel model) => model.countries);
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return _listItem(context, countries[index]);
      },
      itemCount: countries.length,
      separatorBuilder: (_, __) {
        return const Divider();
      },
    );
  }

  Widget _listItem(BuildContext context, Country country) {
    return ListTile(
      title: Text(
        country.name,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      leading: Text(country.flag.emoji),
    );
  }
}
