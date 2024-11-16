import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({super.key});

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  final dateFormat = DateFormat('MMMM dd');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    'Today',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 16.0),
                  Opacity(
                    opacity: 0.6,
                    child: Text(
                      dateFormat.format(DateTime.now()),
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Image.network(
                        'https://apod.nasa.gov/apod/image/2411/KF-ApAn48-7133-4_1024.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text('Apollo 12 and Surveyor 3',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          )),
                  Text(
                    'Put on your red/blue glasses and gaze across the '
                    'western Ocean of Storms on the surface of the Moon. '
                    'The 3D anaglyph features Apollo 12 astronaut Pete Conrad '
                    'visiting the Surveyor 3 spacecraft in November of 1969. '
                    'Surveyor 3 had landed at the site on the inside slope '
                    'of a small crater about 2 1/2 years earlier in April '
                    'of 1967. Visible on the horizon beyond the far crater '
                    'wall, Apollo 12\'s Lunar Module Intrepid touched down '
                    'less than 200 meters (650 feet) away, easy moonwalking '
                    'distance from the robotic Surveyor spacecraft. This '
                    'stereo image was carefully created from two separate '
                    'pictures (AS12-48-7133, AS12-48-7134) captured on the '
                    'lunar surface. They depict the scene from only '
                    'slightly different viewpoints, approximating the '
                    'separation between human eyes.',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
