import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
        backgroundColor: Colors.blue[700],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Terms and Conditions',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Effective Date: [Date]',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Welcome to Perfect Tradelink! These Terms and Conditions govern your use of our mobile application. By accessing or using the app, you agree to comply with these terms.',
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
              const SizedBox(height: 24),

              _buildSectionTitle('1. User Accounts & Roles'),
              _buildSectionContent(
                '• Guest Users: Can browse products and view details but cannot upload bills or earn rewards.\n'
                '• Contractors & Electricians: Can upload purchase bills and earn points. Their accounts are created and managed by the admin.\n'
                '• Admin: Responsible for user management, bill verification, and app content management.',
              ),

              _buildSectionTitle('2. Account Management'),
              _buildSectionContent(
                '• Contractors and electricians cannot create or delete their accounts. Only the admin has the authority to do so.\n'
                '• Users must provide accurate and up-to-date information.\n'
                '• Any misuse of the app may result in account suspension or termination.',
              ),

              _buildSectionTitle('3. Rewards & Points'),
              _buildSectionContent(
                '• Points are awarded based on the bill amount uploaded by contractors and electricians.\n'
                '• Points are verified and credited by the admin.\n'
                '• Points cannot be exchanged for cash and are subject to change based on company policies.\n'
                '• Fraudulent or duplicate bill uploads may lead to penalties, including account suspension.',
              ),

              _buildSectionTitle('4. Billing & Verification'),
              _buildSectionContent(
                '• Contractors and electricians must upload genuine purchase bills for verification.\n'
                '• Admins have the right to accept or reject any bill based on authenticity.\n'
                '• Users must retain original copies of bills for verification purposes if required.',
              ),

              _buildSectionTitle('5. Product Information'),
              _buildSectionContent(
                '• The app provides details of products available in the shop.\n'
                '• Prices, availability, and specifications are subject to change without prior notice.',
              ),

              _buildSectionTitle('6. Prohibited Activities'),
              _buildSectionContent(
                'Users agree not to:\n'
                '• Use the app for fraudulent activities.\n'
                '• Upload false or misleading information.\n'
                '• Attempt to hack, modify, or disrupt app functionality.\n'
                '• Share or distribute unauthorized advertisements.',
              ),

              _buildSectionTitle('7. Limitation of Liability'),
              _buildSectionContent(
                '• Perfect Tradelink is not responsible for any incorrect product details, pricing errors, or delays in bill verification.\n'
                '• The app is provided "as is" without any warranties.\n'
                '• We are not liable for any losses or damages arising from the use of this app.',
              ),

              _buildSectionTitle('8. Changes to Terms'),
              _buildSectionContent(
                '• We may update these Terms and Conditions at any time. Any changes will be posted in the app.',
              ),

              _buildSectionTitle('9. Contact Us'),
              _buildSectionContent(
                '• For any questions regarding these terms, please contact us at [Your Email].',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue[700],
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey[800],
        height: 1.5,
      ),
    );
  }
}