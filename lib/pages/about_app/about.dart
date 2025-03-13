import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.blue[700],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcome to Perfect Hardware',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Your one-stop solution for all your hardware needs!',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'At Perfect Hardware, we aim to make it easy for contractors, electricians, and customers to explore and purchase hardware products. Our app provides a complete product catalog with detailed information, helping users find the right products quickly and efficiently.',
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
              const SizedBox(height: 24),
              Text(
                'What We Offer:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[700],
                ),
              ),
              const SizedBox(height: 16),
              _buildOfferItem(
                '✅ Product Listings',
                'Browse a wide range of hardware products available in our shop.',
              ),
              _buildOfferItem(
                '✅ Bill Upload & Rewards',
                'Contractors and electricians can upload purchase bills and earn reward points.',
              ),
              _buildOfferItem(
                '✅ Admin Management',
                'Admins verify bills, manage users, create products, brands, and advertisements.',
              ),
              const SizedBox(height: 24),
              Text(
                'User Roles:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[700],
                ),
              ),
              const SizedBox(height: 16),
              _buildUserRole(
                'Guest Users',
                'Can view products and details.',
              ),
              _buildUserRole(
                'Contractors & Electricians',
                'Can upload bills and earn rewards (accounts are created by the admin).',
              ),
              _buildUserRole(
                'Admin',
                'Manages users, verifies bills, and oversees product listings.',
              ),
              const SizedBox(height: 24),
              Text(
                'With Perfect Hardware, we bring efficiency, transparency, and rewards to your hardware shopping experience!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'For inquiries, reach out to us at [Your Contact Information].',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOfferItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserRole(String role, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  role,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[600],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}