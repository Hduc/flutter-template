import '../../../core/utils/image_constant.dart';
import '../../chats_two_page/models/chats_two_model.dart';
import '../../notification_screen/models/notification_model.dart';
import 'home_model.dart';

class HomeModelData{
  static List<HomeModel> getHome(){
    return [
      HomeModel(
        img: ImageConstant.person1,
        isNear: true,
        loc: 'New york, USA',
        name: 'Jenny wilson, 24',
        near: '2.5 Km',
      ),
      HomeModel(
        img: ImageConstant.person2,
        isNear: false,
        loc: 'New york, USA',
        name: 'Brooklyn simmons, 20',
        near: '2.5 Km',
      ),
      HomeModel(
        img: ImageConstant.person3,
        isNear: true,
        loc: 'New york, USA',
        name: 'Jenny wilson, 22',
        near: '1.7 Km',
      ),
      HomeModel(
        img: ImageConstant.person4,
        isNear: false,
        loc: 'New york, USA',
        name: 'Jenny wilson, 26',
        near: '2.5 Km',
      ),
      HomeModel(
        img: ImageConstant.person5,
        isNear: true,
        loc: 'New york, USA',
        name: 'Brooklyn simmons, 23',
        near: '5.5 Km',
      ),
      HomeModel(
        img: ImageConstant.person6,
        isNear: true,
        loc: 'New york, USA',
        name: 'Jenny wilson, 22',
        near: '2.0 Km',
      ),
      HomeModel(
        img: ImageConstant.person7,
        isNear: false,
        loc: 'New york, USA',
        name: 'Brooklyn simmons, 24',
        near: '2.5 Km',
      ),
      HomeModel(
        img: ImageConstant.person8,
        isNear: false,
        loc: 'New york, USA',
        name: 'Jenny wilson, 28',
        near: '2.5 Km',
      ),
      HomeModel(
        img: ImageConstant.person9,
        isNear: true,
        loc: 'New york, USA',
        name: 'Jenny wilson, 25',
        near: '10.5 Km',
      ),
    ];
  }

  static List<ChatsTwoModel> chatList() {
    return [
      ChatsTwoModel(
        name: 'Jane cooper',
        image: ImageConstant.person2,
        lastMessage: 'Awesome',
        time: '22:00',
        unseen: false,
      ),
      ChatsTwoModel(
        name: 'Jenny wilson',
        image: ImageConstant.person1,
        lastMessage: 'Hello',
        time: '23:00',
        unseen: true,
      ),
      ChatsTwoModel(
        name: 'Cody fisher',
        image: ImageConstant.person3,
        lastMessage: 'Hyy',
        time: '10:00',
        unseen: false,
      ),
      ChatsTwoModel(
        name: 'Annette black',
        image: ImageConstant.person5,
        lastMessage: 'How are you',
        time: '12:00',
        unseen: false,
      ),
      ChatsTwoModel(
        name: 'Jerome bell',
        image: ImageConstant.person4,
        lastMessage: 'what about you',
        time: '20:00',
        unseen: false,
      ),
      ChatsTwoModel(
        name: 'Courtney henry',
        image: ImageConstant.person3,
        lastMessage: 'fine and what about you',
        time: '18:00',
        unseen: false,
      ),




    ];
  }
  static List<String> interest=[
    'Comedy',
    'Book',
    'Gym & fitness',
    'Cafe',
    'Tennis',
    'Volleyball',
    'Baseball',
    'Archery',
    'Baseball',
    'Archery',

  ];
  static List<NotificationModel>  messageList(){
    return [
      NotificationModel(
        title: '50% off your first month',
        discription: 'Flet 50% off While opening account this offer valid for first month.',
        time: '20 Min ago',
      ),
      NotificationModel(
        title: 'explore the city together!',
        discription: 'Looking for someone to share fun and laughter with.',
        time: '25 Min ago',
      ),
      NotificationModel(
        title: 'See who has already liked you.',
        discription: 'Let’s see who has already liked you in your network',
        time: '30 Min ago'
      ),
      NotificationModel(
        title: 'See your matches in real time.',
        discription: 'Let’s see who has match you in real time in your network.',
        time: '35 Min ago'
      ),
      NotificationModel(
        title: 'Online dating profile reviews.',
        discription: 'Let’s see who has watch your profile in now days with our fast service',
        time: '40 Min ago'
      )
    ];
  }



}