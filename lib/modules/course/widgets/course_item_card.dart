// return Container(
//         width: 400,
//         margin: EdgeInsets.only(right: 20),
//         child: Card(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 width: 400,
//                 height: 150,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(14),
//                     image: DecorationImage(
//                       image: AssetImage(course.urlimage),
//                       fit: BoxFit.cover,
//                     )),
//               ),
//               SizedBox(height: 13),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: Text(
//                   course.title,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 13),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: Text(
//                   course.creatorName,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 17,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 13),
//               Row(
//                 children: <Widget>[
//                   Container(
//                     margin: sizingInformation.deviceScreenType ==
//                             DeviceScreenType.Mobile
//                         ? EdgeInsets.symmetric(vertical: 0, horizontal: 10)
//                         : EdgeInsets.symmetric(horizontal: 15, vertical: 0),
//                     padding: sizingInformation.deviceScreenType ==
//                             DeviceScreenType.Mobile
//                         ? EdgeInsets.symmetric(vertical: 0, horizontal: 10)
//                         : EdgeInsets.symmetric(horizontal: 15, vertical: 0),
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(14),
//                       color: Colors.amber,
//                     ),
//                     child: Text(
//                       course.classStatus,
//                       style: TextStyle(
//                         fontSize: 17,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Icon(Icons.star, color: Colors.amber),
//                       SizedBox(width: 7),
//                       Text(
//                         course.rating.toString(),
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       )
//                     ],
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       );
