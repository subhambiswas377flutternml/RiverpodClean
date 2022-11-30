import 'package:riverpod_clean/presentation/riverpod/package_provider.dart';
import 'package:riverpod_clean/utils/barrel.dart';
import 'package:riverpod_clean/presentation/riverpod/package_states.dart';
class HomeScreen extends ConsumerStatefulWidget
{
  const HomeScreen({Key? key}):super(key: key); 

  @override
  ConsumerState<ConsumerStatefulWidget> createState()=>_HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>{

  late final TextEditingController searchController;

  @override
  void initState()
  {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose()
  {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    MediaQueryData info = MediaQuery.of(context);
    final packageDataProvider = ref.watch(packageProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF12202F),
        toolbarHeight: info.size.height * 0.1,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Pub Dev",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(info.size.width, info.size.height * 0.05),
          child: TextFormField(
            controller: searchController,
            decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search Package"),
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(packageProvider.notifier).searchApi(keyWord: searchController.text.trim());
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: packageDataProvider is LoadingState ? const Center(child: CircularProgressIndicator())
          :ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: info.size.width * 0.01,
            vertical: info.size.height * 0.02,
          ),
          shrinkWrap: true,
          itemCount: (packageDataProvider as LoadedState).allPackageData.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {},
              child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: info.size.width * 0.03,
                      vertical: info.size.height * 0.01,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          packageDataProvider.allPackageData[index].name.toString(),
                          style: TextStyle(
                            fontSize: info.textScaleFactor * 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: info.size.height * 0.01,
                        ),
                        Text(packageDataProvider.allPackageData[index].description.toString()),
                      ],
                    ),
                  )),
            );
          },
          separatorBuilder: (_, index) {
            return SizedBox(
              height: info.size.height * 0.01,
            );
          },
          ),
    );
  }
}