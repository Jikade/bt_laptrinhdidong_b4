import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        fontFamily: 'Inter',
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            top: 44,
            left: 24,
            right: 24,
            bottom: 36,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildTopBar(),
              const SizedBox(height: 24),
              _buildProfileHeader(),
              const SizedBox(height: 24),
              _buildStatsCard(),
              const SizedBox(height: 24),
              _buildAboutMe(),
              const SizedBox(height: 24),
              _buildSkillsAndExpertise(),
              const SizedBox(height: 24),
              _buildFeaturedProjects(),
              const SizedBox(height: 24),
              _buildContactCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return SizedBox(
      width: 336,
      height: 42,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFFE2E8F0)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 18,
              color: Color(0xFF1E293B),
            ),
          ),
          const Text(
            'Profile',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              height: 22 / 18,
              color: Color(0xFF0F172A),
            ),
          ),
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFFE2E8F0)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.share_outlined,
              size: 18,
              color: Color(0xFF1E293B),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return SizedBox(
      width: 336,
      child: Column(
        children: [
          SizedBox(
            width: 140,
            height: 140,
            child: Stack(
              children: [
                Container(
                  width: 140,
                  height: 140,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFFFB087),
                        Color(0xFFFF8080),
                        Color(0xFFFFCF70),
                      ],
                      stops: [0.0, 0.3571, 0.7143],
                    ),
                  ),
                ),
                Positioned(
                  left: 4,
                  top: 4,
                  child: Container(
                    width: 132,
                    height: 132,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  left: 8,
                  top: 8,
                  child: ClipOval(
                    child: Image.asset(
                      'images/alex_rivers.png',
                      width: 124,
                      height: 124,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 104,
                  top: 104,
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: const BoxDecoration(
                        color: Color(0xFF0284C7),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Alex Rivers',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              height: 29 / 24,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Lead Mobile Engineer',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              height: 18 / 15,
              color: Color(0xFF64748B),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              border: Border.all(color: const Color(0xFFE2E8F0)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 14,
                  color: Color(0xFF475569),
                ),
                const SizedBox(width: 6),
                const Text(
                  'Tokyo, Japan',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    height: 16 / 13,
                    color: Color(0xFF475569),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsCard() {
    return Container(
      width: 336,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFF1F5F9)),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(15, 23, 41, 0.05),
            offset: Offset(0, 8),
            blurRadius: 18,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStatColumn('148', 'Projects', const Color(0xFF0F172A)),
          Container(width: 1, height: 28, color: const Color(0xFFE2E8F0)),
          _buildStatColumn('9 Yrs', 'Experience', const Color(0xFF0F172A)),
          Container(width: 1, height: 28, color: const Color(0xFFE2E8F0)),
          _buildStatColumn('4.9 ★', 'Rating', const Color(0xFFEAB308)),
        ],
      ),
    );
  }

  Widget _buildStatColumn(String value, String label, Color valueColor) {
    return SizedBox(
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              height: 24 / 20,
              color: valueColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              height: 15 / 12,
              color: Color(0xFF94A3B8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAboutMe() {
    return SizedBox(
      width: 336,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About Me',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
              height: 21 / 17,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Passionate Lead Mobile Engineer specialized in Flutter, Dart, and building high-performance cross-platform applications. Focused on elegant',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 21 / 14,
              color: Color(0xFF475569),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsAndExpertise() {
    return SizedBox(
      width: 336,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills & Expertise',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
              height: 21 / 17,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _buildSkillChip(
                'Flutter',
                Icons.flutter_dash,
                const Color(0xFFE0F2FE),
                const Color(0xFF0369A1),
              ),
              _buildSkillChip(
                'Dart',
                Icons.code,
                const Color(0xFFDCFCE7),
                const Color(0xFF15803D),
              ),
              _buildSkillChip(
                'Clean Arch',
                Icons.layers_outlined,
                const Color(0xFFFFE4E6),
                const Color(0xFFBE123C),
              ),
              _buildSkillChip(
                'UI/UX',
                Icons.color_lens_outlined,
                const Color(0xFFF3E8FF),
                const Color(0xFF7E22CE),
              ),
              _buildSkillChip(
                'Firebase',
                Icons.local_fire_department_outlined,
                const Color(0xFFFEF3C7),
                const Color(0xFFB45309),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillChip(
    String label,
    IconData icon,
    Color bgColor,
    Color textColor,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: textColor),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              height: 16 / 13,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedProjects() {
    return SizedBox(
      width: 336,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Featured Projects',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
              height: 21 / 17,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildProjectCard(
                'E-Shop Flutter',
                'Mobile App • 2026',
                'assets/images/2.png',
              ),
              _buildProjectCard(
                'Crypto Vault',
                'Finance • Clean Arch',
                'assets/images/3.png',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(String title, String subtitle, String imageUrl) {
    return Container(
      width: 162,
      height: 145,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE2E8F0)),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(15, 23, 41, 0.04),
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 85,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 8,
              bottom: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    height: 16 / 13,
                    color: Color(0xFF0F172A),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    height: 13 / 11,
                    color: Color(0xFF64748B),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactCard() {
    return Container(
      width: 336,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE2E8F0)),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(15, 23, 41, 0.04),
            offset: Offset(0, 4),
            blurRadius: 12,
          ),
        ],
      ),
      child: Column(
        children: [
          _buildContactRow(
            Icons.alternate_email,
            'Contact Information',
            isTitle: true,
            iconBgColor: const Color(0xFFF1F5F9),
            iconColor: const Color(0xFF0F172A),
          ),
          Container(height: 1, color: const Color(0xFFF1F5F9)),
          _buildContactRow(
            Icons.mail_outline,
            'alex.rivers@email.com',
            iconBgColor: const Color(0xFFF8FAFC),
            iconColor: const Color(0xFF64748B),
          ),
          Container(height: 1, color: const Color(0xFFF1F5F9)),
          _buildContactRow(
            Icons.phone_outlined,
            '+81 (90) 1234-5678',
            iconBgColor: const Color(0xFFF8FAFC),
            iconColor: const Color(0xFF64748B),
          ),
        ],
      ),
    );
  }

  Widget _buildContactRow(
    IconData icon,
    String text, {
    bool isTitle = false,
    required Color iconBgColor,
    required Color iconColor,
  }) {
    return Container(
      height: 62,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, size: 18, color: iconColor),
              ),
              const SizedBox(width: 14),
              Text(
                text,
                style: TextStyle(
                  fontWeight: isTitle ? FontWeight.w700 : FontWeight.w500,
                  fontSize: 14,
                  height: 17 / 14,
                  color: isTitle
                      ? const Color(0xFF0F172A)
                      : const Color(0xFF334155),
                ),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Color(0xFFCBD5E1),
          ),
        ],
      ),
    );
  }
}
