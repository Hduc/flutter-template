import 'package:vtv/app/model/model_banner.dart';

import '../app/model/model_bottom_nav.dart';
import '../app/model/model_download.dart';
import '../app/model/model_intro.dart';
import '../app/model/model_personalization.dart';
import '../app/model/model_popular_show.dart';
import '../app/model/model_save.dart';

class DataFile {
  static List<ModelIntro> getAllIntroList() {
    List<ModelIntro> list = [];
    list.add(
        ModelIntro("Enjoy Your Favourite Movie \nEverywhere", "intro1.png"));

    list.add(
        ModelIntro("12,000+ Live Stream Videos \nEverywhere", "intro2.png"));

    list.add(ModelIntro("Unlimited Movies,Tv Shows \nand More", "intro3.png"));

    list.add(ModelIntro("Welcome To VTV", "intro4.png"));

    return list;
  }

  static List<ModelPersonalization> getAllPersonalizationList() {
    List<ModelPersonalization> list = [];
    list.add(ModelPersonalization('Action', 'personal1.png', '5201'));
    list.add(ModelPersonalization('Adventure', 'personal2.png', '4508'));
    list.add(ModelPersonalization('Comedy', 'personal3.png', '5201'));
    list.add(ModelPersonalization('Drama', 'personal4.png', '1423'));
    list.add(ModelPersonalization('Biographical', 'personal5.png', '5201'));
    list.add(ModelPersonalization('Short films', 'personal6.png', '1423'));
    return list;
  }

  static List<ModelBottomNav> getAllBottomNavList() {
    List<ModelBottomNav> bottomList = [];

    bottomList.add(ModelBottomNav("Home", "home.svg", "home_active.svg"));
    bottomList.add(ModelBottomNav("Search", "search.svg", "search_active.svg"));
    bottomList.add(ModelBottomNav("My Save", "list.svg", "list_active.svg"));
    bottomList.add(
        ModelBottomNav("Downloaded", "download.svg", "download_active.svg"));
    bottomList
        .add(ModelBottomNav("Profile", "profile.svg", "profile_active.svg"));

    return bottomList;
  }

  static List<ModelBanner> getAllBannerList() {
    List<ModelBanner> bannerList = [];

    bannerList.add(ModelBanner('Boss Level', 'banner1.png'));
    bannerList.add(ModelBanner('Doon Kaand', 'banner2.png'));
    bannerList.add(ModelBanner('Avengers', 'banner3.png'));
    bannerList.add(ModelBanner('Aladdin', 'banner4.png'));

    return bannerList;
  }

  static List<ModelPopularShows> getAllPopularShows() {
    List<ModelPopularShows> popularShowsList = [];

    popularShowsList.add(ModelPopularShows('Dead To Me', 'show1.png'));
    popularShowsList.add(ModelPopularShows('1917', 'show2.png'));
    popularShowsList.add(ModelPopularShows('Power', 'show3.png'));
    popularShowsList.add(ModelPopularShows('Limitless', 'show4.png'));
    popularShowsList.add(ModelPopularShows('MAI', 'show5.png'));
    popularShowsList.add(ModelPopularShows('Bajirao Mastani', 'show6.png'));
    popularShowsList.add(ModelPopularShows('Krrish', 'show7.png'));
    popularShowsList.add(ModelPopularShows('Kahaani', 'show8.png'));
    popularShowsList.add(ModelPopularShows('Aashram', 'show9.png'));
    popularShowsList.add(ModelPopularShows('Avrodh', 'show10.png'));
    popularShowsList.add(ModelPopularShows('Asur', 'show11.png'));
    popularShowsList.add(ModelPopularShows('The Frame Game', 'show12.png'));

    return popularShowsList;
  }

  static List<ModelSave> getAllSaveList() {
    List<ModelSave> saveList = [];
    saveList.add(ModelSave('MAI', '2022 ‧ Drama ‧ 1 season', 'show5.png'));
    saveList.add(
        ModelSave('The Expendable', '2022 ‧ Action/Adventure', 'show.png'));
    saveList.add(ModelSave('Asur', '2022 ‧ Drama ‧ 1 season', 'show11.png'));
    saveList.add(ModelSave('Avrodh', '2022 ‧ 2 season', 'show10.png'));

    return saveList;
  }

  static List<ModelDownload> getAllDownloadList() {
    List<ModelDownload> downloadList = [];
    downloadList
        .add(ModelDownload('E1-Lorem Ipsum dolor sit', 'dow1.png', '1h 6m'));
    downloadList
        .add(ModelDownload('E3-Lorem Ipsum dolor sit', 'dow2.png', '1h 2m'));
    downloadList.add(ModelDownload('Boss Level', 'dow3.png', '2h 4m'));
    downloadList
        .add(ModelDownload('E1-Lorem Ipsum dolor sit', 'show10.png', '2h 4m'));

    return downloadList;
  }
}
