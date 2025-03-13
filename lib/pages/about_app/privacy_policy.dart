import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: Colors.blue[700],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Privacy Policy',
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
                'Welcome to Perfect Tradelink! Your privacy is important to us, and we are committed to protecting any information you share with us while using our mobile application. This Privacy Policy outlines what data we collect, how we use it, and how we ensure its security. By using our app, you agree to the terms outlined in this policy.',
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
              const SizedBox(height: 24),

              _buildSectionTitle('1. Information We Collect'),
              _buildSubSectionTitle('A. Personal Information'),
              _buildSectionContent(
                'For Contractors and Electricians, we collect essential details such as:\n'
                '• Full Name\n'
                '• Phone Number\n'
                '• Email Address\n'
                '• Business Information (if applicable)\n'
                'Guest Users do not need to provide personal information as they only browse products.',
              ),
              _buildSubSectionTitle('B. Billing Information'),
              _buildSectionContent(
                'When Contractors and Electricians upload their purchase bills, we store the details, including:\n'
                '• Invoice Number\n'
                '• Purchase Date\n'
                '• Total Amount\n'
                '• Uploaded Bill Image\n'
                'This information is used solely for verification and reward processing.',
              ),

              _buildSectionTitle('2. How We Use Your Information'),
              _buildSectionContent(
                'We use the collected data for the following purposes:\n'
                '• To provide users access to product listings and details.\n'
                '• To enable Contractors and Electricians to upload purchase bills and receive reward points.\n'
                '• To allow Admins to verify bills, validate transactions, and manage reward points.\n'
                '• To manage products, brands, advertisements, and app-related activities.\n'
                '• To improve the app’s functionality and provide better services to our users.\n'
                'We do not use your information for advertising, promotional campaigns, or any third-party marketing purposes.',
              ),

              _buildSectionTitle('3. Data Sharing & Security'),
              _buildSubSectionTitle('A. Data Protection Measures'),
              _buildSectionContent(
                'We take strong measures to ensure your data is stored securely:\n'
                '• All personal data is stored in encrypted databases to prevent unauthorized access.\n'
                '• We do not share, sell, or trade your data with third-party companies for marketing or advertising purposes.\n'
                '• Only authorized Admins have access to sensitive user data for verification and operational purposes.',
              ),
              _buildSubSectionTitle('B. Data Sharing'),
              _buildSectionContent(
                '• We may share billing data with third-party service providers for fraud prevention and verification purposes.\n'
                '• If required by law, we may disclose user information to comply with legal obligations.',
              ),

              _buildSectionTitle('4. User Roles & Permissions'),
              _buildSubSectionTitle('A. Guest Users'),
              _buildSectionContent(
                '• Can browse product listings and view product details.\n'
                '• Cannot upload bills or earn reward points.',
              ),
              _buildSubSectionTitle('B. Contractors & Electricians'),
              _buildSectionContent(
                '• Can upload purchase bills and earn points based on bill amount.\n'
                '• Cannot create or delete their accounts (Admin is responsible for account management).',
              ),
              _buildSubSectionTitle('C. Admin'),
              _buildSectionContent(
                '• Can create and manage Contractor and Electrician accounts.\n'
                '• Reviews and validates bills before approving rewards.\n'
                '• Manages products, brands, and advertisements.\n'
                '• Has the authority to approve or reject user-submitted bills.',
              ),

              _buildSectionTitle('5. Your Rights'),
              _buildSectionContent(
                'We value transparency and user control over personal information. As a user of Perfect Tradelink, you have the following rights:\n'
                '• Account Updates: Contractors and Electricians can request updates to their personal information by contacting support.\n'
                '• Data Retention: We store user data only as long as necessary for app functionality, after which it is securely removed.\n'
                '• Since Contractors and Electricians cannot create or delete their accounts, they must contact the Admin for any account-related concerns.',
              ),

              _buildSectionTitle('6. Changes to this Privacy Policy'),
              _buildSectionContent(
                '• We may update this Privacy Policy from time to time to reflect changes in our services, legal requirements, or security standards. Any modifications will be posted within the app, and users are encouraged to review the policy periodically.',
              ),

              _buildSectionTitle('7. Contact Us'),
              _buildSectionContent(
                'If you have any questions, concerns, or requests regarding this Privacy Policy, you can contact us at:\n'
                '📧 [Your Email]\n'
                '📞 [Your Contact Number]',
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

  Widget _buildSubSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 6.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.blue[600],
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