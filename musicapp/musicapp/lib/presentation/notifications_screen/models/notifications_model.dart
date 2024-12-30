
import 'notifications_item_model.dart';

/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {
  // Rx<List<NotificationsItemModel>> notificationsItemList =
  //     Rx(List.generate(9, (index) => NotificationsItemModel()));


  static List<NotificationsItemModel> notificationsItemList(){
   return[
    NotificationsItemModel("How to download Hindi songs online?","2 min"),
    NotificationsItemModel("Any types of works are eligible for copyright protection","10 min"),
    NotificationsItemModel("Audiovisual works, such as TV shows, movies, and online videos","20 min"),
    NotificationsItemModel("Written works, such as lectures, articles, musical compositions","30 min"),
    NotificationsItemModel("Visual works, such as paintings, posters, and advertisements","40 min"),
    NotificationsItemModel("Dramatic works, such as plays and musicals","59 min"),
    NotificationsItemModel("It's possible to use a copyright-protected infringing their copyright","2 hour"),
    NotificationsItemModel("When giving permission to use their work, some copyright holders ask","4 hour"),
    NotificationsItemModel("How to download Hindi songs online?","6 hour"),

   ];}



}
