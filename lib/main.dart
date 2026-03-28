import 'package:flutter/material.dart';

void main() {
  runApp(const WatchStoreApp());
}

// ─── MAIN APP ───────────────────────────────────────────────────────────────

class WatchStoreApp extends StatelessWidget {
  const WatchStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Georgia',
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1A1A1A)),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

// ─── COLORS ─────────────────────────────────────────────────────────────────

const Color kDark = Color(0xFF1A1A1A);
const Color kDarkLight = Color(0xFF3A3A3A);
const Color kGold = Color(0xFFD4AF37);

// ─── HOME SCREEN ────────────────────────────────────────────────────────────

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F0),
      body: CustomScrollView(
        slivers: [

          // ── APP BAR ─────────────────────────────────────────
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: kDark,
            elevation: 0,
            title: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('⌚', style: TextStyle(fontSize: 18)),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Watch Store',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w800)),
                    Text('Deliver to: Lahore',
                        style: TextStyle(color: Colors.white70, fontSize: 11)),
                  ],
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications_outlined, color: Colors.white),
                onPressed: () {},
              ),
              Stack(
                children: [
                  IconButton(
                    icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
                    onPressed: () {},
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: kGold,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text('2',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // ── BODY CONTENT ────────────────────────────────────
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Search Bar
                Container(
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withValues(alpha: 0.07),
                          blurRadius: 20,
                          offset: Offset(0, 4)),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search luxury watches...',
                      hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                      prefixIcon: Icon(Icons.search_rounded, color: kGold),
                      suffixIcon: Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: kDark,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Filter',
                            style: TextStyle(color: Colors.white, fontSize: 11)),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),

                // Hero Banner
                Container(
                  height: 260,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                          color: kDark.withValues(alpha: 0.4),
                          blurRadius: 20,
                          offset: Offset(0, 8)),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&q=80',
                          fit: BoxFit.cover,
                          errorBuilder: (c, e, s) => Container(color: kDark),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withValues(alpha: 0.75),
                                Colors.black.withValues(alpha: 0.15),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(22, 16, 22, 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                  color: kGold,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text('⌚ Premium Collection 2025',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700)),
                              ),
                              SizedBox(height: 10),
                              Text('Luxury Watches\nFor Every\nOccasion!',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900,
                                      height: 1.15)),
                              SizedBox(height: 14),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: kGold,
                                  foregroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                                child: Text('Shop Now →',
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Offer Strip
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      _offerBox(Icons.local_shipping_outlined, 'Free Shipping', 'Above Rs. 9,999', Color(0xFFF0EAD6), 0),
                      _offerBox(Icons.verified_outlined, 'Authentic', '100% Original', Color(0xFFF5F5F5), 1),
                      _offerBox(Icons.replay_outlined, 'Easy Return', '30-day return', Color(0xFFEAEAEA), 2),
                    ],
                  ),
                ),

                // Categories Title
                _sectionTitle('Browse by Brand'),

                // Categories List
                SizedBox(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    children: [
                      _categoryItem('Rolex', 'https://images.unsplash.com/photo-1546868871-7041f2a55e12?w=300&q=80', Color(0xFF006039)),
                      _categoryItem('Casio', 'https://images.unsplash.com/photo-1524592094714-0f0654e20314?w=300&q=80', Color(0xFF1A1A1A)),
                      _categoryItem('Apple', 'https://images.unsplash.com/photo-1551816230-ef5deaed4a26?w=300&q=80', Color(0xFF555555)),
                      _categoryItem('Omega', 'https://images.unsplash.com/photo-1598300042247-d088f8ab3a91?w=300&q=80', Color(0xFF0D47A1)),
                      _categoryItem('Fossil', 'https://images.unsplash.com/photo-1542496658-e33a6d0d50f6?w=300&q=80', Color(0xFF5D4037)),
                      _categoryItem('Tissot', 'https://images.unsplash.com/photo-1612817288484-6f916006741a?w=300&q=80', Color(0xFFD4AF37)),
                    ],
                  ),
                ),

                // Featured Watches Title
                _sectionTitle('Featured Watches'),

                // Featured Watches List
                SizedBox(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    children: [
                      _productCard('Rolex Submariner', 'Rs. 250,000', '/piece', 'https://images.unsplash.com/photo-1547996160-81dfa63595aa?w=400&q=80', 4.9, false),
                      _productCard('Apple Watch Ultra', 'Rs. 149,000', '/piece', 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?w=400&q=80', 4.8, false),
                      _productCard('Casio G-Shock', 'Rs. 18,500', '/piece', 'https://images.unsplash.com/photo-1434056886845-dac89ffe9b56?w=400&q=80', 4.7, false),
                      _productCard('Omega Seamaster', 'Rs. 180,000', '/piece', 'https://images.unsplash.com/photo-1625998773034-5ff44e1d3d01?w=400&q=80', 4.9, false),
                      _productCard('Fossil Gen 6', 'Rs. 35,000', '/piece', 'https://images.unsplash.com/photo-1542496658-e33a6d0d50f6?w=400&q=80', 4.5, false),
                    ],
                  ),
                ),

                // Promo Banner
                Container(
                  height: 140,
                  margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                          color: kGold.withValues(alpha: 0.35),
                          blurRadius: 20,
                          offset: Offset(0, 8)),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?w=800&q=80',
                          fit: BoxFit.cover,
                          errorBuilder: (c, e, s) => Container(color: kDark),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withValues(alpha: 0.7),
                                Colors.transparent,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                                decoration: BoxDecoration(
                                    color: kGold,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text('LIMITED OFFER',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w900)),
                              ),
                              SizedBox(height: 6),
                              Text('Get 15% Off\nFirst Purchase!',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      height: 1.2)),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: kDark,
                                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  minimumSize: Size.zero,
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Text('Claim Now',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Popular Deals Title
                _sectionTitle("Popular Deals 🔥"),

                // Deals Grid
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 1.4,
                  children: [
                    _dealCard('Tissot PR 100', 'Rs. 42,000', '/piece', 'https://images.unsplash.com/photo-1612817288484-6f916006741a?w=400&q=80'),
                    _dealCard('Casio Edifice', 'Rs. 15,500', '/piece', 'https://images.unsplash.com/photo-1539874754764-5a96559165b0?w=400&q=80'),
                    _dealCard('Samsung Watch 6', 'Rs. 65,000', '/piece', 'https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?w=400&q=80'),
                    _dealCard('Fossil Minimalist', 'Rs. 22,000', '/piece', 'https://images.unsplash.com/photo-1523170335258-f5ed11844a49?w=400&q=80'),
                  ],
                ),

                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 20,
                offset: Offset(0, -4)),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (i) => setState(() => selectedIndex = i),
          selectedItemColor: kDark,
          unselectedItemColor: Colors.grey.shade400,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedLabelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
          unselectedLabelStyle: TextStyle(fontSize: 11),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded), label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
          ],
        ),
      ),
    );
  }

  // ─── SECTION TITLE ──────────────────────────────────────────────────────
  Widget _sectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: Color(0xFF1A1A1A))),
          Text('See all →',
              style: TextStyle(fontSize: 13, color: kGold, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  // ─── OFFER BOX ──────────────────────────────────────────────────────────
  Widget _offerBox(IconData icon, String label, String sub, Color color, int index) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: index < 2 ? 8 : 0),
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Icon(icon, color: kDark, size: 26),
            SizedBox(height: 5),
            Text(label,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w800, color: kDark)),
            Text(sub,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 9, color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }

  // ─── CATEGORY ITEM ──────────────────────────────────────────────────────
  Widget _categoryItem(String name, String imageUrl, Color color) {
    return Container(
      width: 80,
      margin: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: color.withValues(alpha: 0.35),
                    blurRadius: 12,
                    offset: Offset(0, 4)),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (c, e, s) => Container(
                  color: color.withValues(alpha: 0.2),
                  child: Icon(Icons.watch, color: color),
                ),
              ),
            ),
          ),
          SizedBox(height: 6),
          Text(name,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: Color(0xFF333333))),
        ],
      ),
    );
  }

  // ─── PRODUCT CARD ───────────────────────────────────────────────────────
  Widget _productCard(String name, String price, String unit, String imageUrl, double rating, bool isFav) {
    return Container(
      width: 155,
      margin: EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withValues(alpha: 0.07),
              blurRadius: 15,
              offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.network(
                  imageUrl,
                  height: 120,
                  width: 155,
                  fit: BoxFit.cover,
                  errorBuilder: (c, e, s) => Container(
                    height: 120,
                    color: Colors.grey.shade100,
                    child: Icon(Icons.watch, color: Colors.grey),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                  child: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border,
                    size: 14,
                    color: isFav ? Colors.red : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 8, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800, color: Color(0xFF1A1A1A))),
                SizedBox(height: 2),
                Row(
                  children: [
                    Icon(Icons.star_rounded, color: kGold, size: 13),
                    SizedBox(width: 2),
                    Text('$rating', style: TextStyle(fontSize: 10, color: Colors.grey.shade600)),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            TextSpan(text: price,
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: kDark)),
                            TextSpan(text: unit,
                                style: TextStyle(fontSize: 10, color: Colors.grey.shade500)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(color: kDark, shape: BoxShape.circle),
                      child: Icon(Icons.add, color: Colors.white, size: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ─── DEAL CARD ──────────────────────────────────────────────────────────
  Widget _dealCard(String name, String price, String unit, String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withValues(alpha: 0.07),
              blurRadius: 15,
              offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    loadingBuilder: (c, child, progress) {
                      if (progress == null) return child;
                      return Container(
                        color: Colors.grey.shade100,
                        child: Center(
                          child: CircularProgressIndicator(
                              strokeWidth: 2, color: kGold),
                        ),
                      );
                    },
                    errorBuilder: (c, e, s) => Container(
                        color: Colors.grey.shade100,
                        child: Icon(Icons.watch, color: Colors.grey)),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                          color: kDark,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text('DEAL',
                          style: TextStyle(color: kGold, fontSize: 9, fontWeight: FontWeight.w900)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800)),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text('$price$unit',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: kDark)),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(color: kDark, shape: BoxShape.circle),
                      child: Icon(Icons.add, color: Colors.white, size: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}