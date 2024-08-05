// import 'package:flutter/material.dart';

// //
// class ResumePage extends StatelessWidget {
//   const ResumePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.all(20.0),
//       child: Row(
//         children: [
//           // Experiences Section
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Experiences',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 20),
//                 ExperienceItem(
//                   year: '2019',
//                   title: 'Project Manager',
//                   company: 'Best Studio',
//                   description:
//                       'Proin ornare non purus ut rutrum. Nulla facilisi. Aliquam laoreet libero ac pharetra feugiat. Cras ac fermentum nunc, a faucibus nunc.',
//                 ),
//                 ExperienceItem(
//                   year: '2018',
//                   title: 'UX Designer',
//                   company: 'Digital Ace',
//                   description:
//                       'Fusce rutrum augue id orci rhoncus molestie. Nunc auctor dignissim lacus vel iaculis.',
//                 ),
//                 ExperienceItem(
//                   year: '2016',
//                   title: 'UI Freelancer',
//                   company: '',
//                   description:
//                       'Sed fringilla vitae enim sit amet cursus. Sed cursus dictum tortor quis pharetra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
//                 ),
//                 ExperienceItem(
//                   year: '2014',
//                   title: 'Junior Designer',
//                   company: 'Crafted Co.',
//                   description: '',
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(width: 40),
//           // Educations Section
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Educations',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 20),
//                 EducationItem(
//                   year: '2017',
//                   title: 'Mobile Web',
//                   school: 'Master Design',
//                   description:
//                       'Please tell your friends about Tooplate website. That would be very helpful. We need your support.',
//                 ),
//                 EducationItem(
//                   year: '2015',
//                   title: 'User Interfaces',
//                   school: 'Creative Agency',
//                   description:
//                       'Tooplate is a great website to download HTML templates without any login or email.',
//                 ),
//                 EducationItem(
//                   year: '2013',
//                   title: 'Artwork Design',
//                   school: 'New Art School',
//                   description:
//                       'You can freely use Tooplate\'s templates for your business or personal sites. You cannot redistribute this template without permission.',
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ExperienceItem extends StatelessWidget {
//   final String year;
//   final String title;
//   final String company;
//   final String description;

//   const ExperienceItem({
//     super.key,
//     required this.year,
//     required this.title,
//     required this.company,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           children: [
//             Text(
//               year,
//               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             Container(
//               width: 2,
//               height: 60,
//               color: Colors.grey,
//             ),
//           ],
//         ),
//         const SizedBox(width: 20),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: title,
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
                        
//                       ),
//                     ),
//                     TextSpan(
//                       text: '  $company',
//                       style: const TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.normal,
//                           color: Colors.grey),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 description,
//                 style: const TextStyle(fontSize: 16),
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class EducationItem extends StatelessWidget {
//   final String year;
//   final String title;
//   final String school;
//   final String description;

//   const EducationItem({
//     super.key,
//     required this.year,
//     required this.title,
//     required this.school,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           children: [
//             Text(
//               year,
//               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             Container(
//               width: 2,
//               height: 60,
//               color: Colors.grey,
//             ),
//           ],
//         ),
//         const SizedBox(width: 20),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: title,
//                       style: const TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black),
//                     ),
//                     TextSpan(
//                       text: '  $school',
//                       style: const TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.normal,
//                           color: Colors.grey),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 description,
//                 style: const TextStyle(fontSize: 16),
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
