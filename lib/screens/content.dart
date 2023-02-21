import 'package:demo/screens/industriesWeServe.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RequiredTexts {
  static Text subTopic = const Text(
    '''Modernize Your IT Landscape & Business 
Avancer is an industry leader in providing simple, reliable, and affordable IT infrastructure professional solutions for Small and Medium Businesses, helping them modernize their operations and get a competitive edge.
''',
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        letterSpacing: 1,
        height: 1.5,
        wordSpacing: 2,
        fontFamily: ".SF UI Text",
        fontWeight: FontWeight.normal),
  );
  static List topicsList = [
    "AVANCER SOLUTIONS",
    "IT Assessment & Upgrade Services",
    "Consolidation & Migration Services",
    "IT Transformation",
    "Engineering on Demand"
  ];
  static Text getOnPath = const Text(
    "IT Assessment & Upgrade Services",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      letterSpacing: 1,
      wordSpacing: 1,
      height: 1.5,
    ),
  );

  static RichText intheAge = RichText(
    text: TextSpan(children: [
      const TextSpan(
        text:
            "Analyze your existing IT infrastructure and fast-track your transition to modernization with our IT Assessment & Upgrade Services ",
        style: TextStyle(
            letterSpacing: 1,
            wordSpacing: 1,
            height: 1.5,
            fontSize: 14,
            fontWeight: FontWeight.w400),
      ),
      TextSpan(
          text: " Learn More...",
          style: const TextStyle(
              color: Colors.blue,
              letterSpacing: 1,
              wordSpacing: 1,
              height: 1.5,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          recognizer: TapGestureRecognizer()..onTap = () {})
    ]),
  );

  static Text consolidation = const Text(
    "Consolidation & Migration Services",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      letterSpacing: 1,
      wordSpacing: 1,
      height: 1.5,
    ),
  );
  static RichText reduce = RichText(
    text: TextSpan(children: [
      const TextSpan(
        text:
            "Reduce IT costs,ensure a secure migration and eliminate system downtime with our Consolidation & Migration Services",
        style: TextStyle(
            letterSpacing: 1,
            wordSpacing: 1,
            height: 1.5,
            fontSize: 14,
            fontWeight: FontWeight.w400),
      ),
      TextSpan(
          text: " Learn More...",
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()..onTap = () {})
    ]),
  );
  static Text itTransformation = const Text(
    "IT Transformation ",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      letterSpacing: 1,
      wordSpacing: 1,
      height: 1.5,
    ),
  );
  static RichText driveBusiness = RichText(
    text: TextSpan(children: [
      const TextSpan(
        text:
            "Drive business growth and be future-proof with our flexible and scalable individualized IT transformation solutions.",
        style: TextStyle(
            letterSpacing: 1,
            wordSpacing: 1,
            height: 1.5,
            fontSize: 14,
            fontWeight: FontWeight.w400),
      ),
      TextSpan(
          text: " Learn More...",
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()..onTap = () {})
    ]),
  );

  static Text engineeringOnDemand = const Text(
    "Engineering on Demand",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      letterSpacing: 1,
      wordSpacing: 1,
      height: 1.5,
    ),
  );
  static RichText ensure = RichText(
    text: TextSpan(children: [
      const TextSpan(
        text:
            "Ensure your projects move forward seamlessly with the expertise and experience of our on-demand engineers.",
        style: TextStyle(
            letterSpacing: 1,
            wordSpacing: 1,
            height: 1.5,
            fontSize: 14,
            fontWeight: FontWeight.w400),
      ),
      TextSpan(
          text: " Learn More...",
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()..onTap = () {})
    ]),
  );

  static Text optimize = const Text(
    '''Optimize your IT environment.''',
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      letterSpacing: 1,
      wordSpacing: 1,
      height: 1.5,
    ),
  );
  static Text ourCloud = const Text(
    '''Our cloud and data center services span the assessment, consultation and deployment phases. We’ll give you clarity of your existing environment and a road map to achieve your productivity goals. We offer:''',
    textAlign: TextAlign.center,
    style: TextStyle(
        letterSpacing: 1,
        wordSpacing: 1,
        height: 1.5,
        fontSize: 14,
        fontWeight: FontWeight.w400),
  );
  static Text partner = const Text(
    '''A partner you can trust''',
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      letterSpacing: 1,
      wordSpacing: 1,
      height: 1.5,
    ),
  );
  static Text ourteam = const Text(
    '''
Our team of technicians, engineers and visionaries has guided organizations as they advance their technology, reduce cost and promote innovation through a proven methodology that produces positive, consistent results.''',
    textAlign: TextAlign.start,
    style: TextStyle(
        letterSpacing: 1,
        wordSpacing: 1,
        height: 1.5,
        fontSize: 14,
        fontWeight: FontWeight.w400),
  );
  static Text gainTrue = const Text(
    '''Gain true understanding.''',
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      letterSpacing: 1,
      wordSpacing: 1,
      height: 1.5,
    ),
  );
  static Text industriesWeServe = const Text("Industries We Serve : -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));
  static Text isYourTech = const Text(
    '''
Is your technology supporting your organization or standing in the way of growth? A complete assessment gives you an end-to-end view of your infrastructure, storage and networks. Our workshops include security strategy, workload education and infrastructure strategy.
We’ll help you''',
    textAlign: TextAlign.start,
    style: TextStyle(
        letterSpacing: 1,
        wordSpacing: 1,
        height: 1.5,
        fontSize: 14,
        fontWeight: FontWeight.w400),
  );
  static String weAreNotJust =
      '''We are not just another IT solutions provider capitalizing on the big data boom. We have a cause. Our goal is to help SMBs unlock the potential of advanced IT technology and compete with larger corporations and organizations. Our knowledge of SMBs and multi-disciplinary expertise have enabled us to offer unparalleled IT Solutions to businesses from various industries. Currently, we serve more than six industries that play a crucial role in nation-building and the global market.''';

  static Text oilIndustries = const Text("Oil Industries : -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));

  static String oilGasIndustry =
      '''The oil and gas industry is heavily dependent on data management and analysis. Our solutions help companies in the oil industry to optimize their operations, reduce downtime, and increase their overall profitability.''';

  static Text healthCare = const Text(
      "Healthcare & Other Service-Based Sectors : -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));

  static String itSolutions =
      '''Our IT solutions help healthcare providers and service-based companies provide better care to their patients/clients, reduce administrative burdens, and optimize workflows.''';

  static Text financial = const Text("Financial Consulting : -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));

  static String weOfferFinancial =
      '''We offer financial management systems, cybersecurity, data analytics, and cloud computing solutions to financial consulting companies. Our solutions help these companies to improve their financial reporting, reduce fraud, and manage risk more effectively.''';

  static Text education = const Text("Education : -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));

  static String weDevelop =
      '''We develop integrated IT solutions for educational institutions, helping them improve student outcomes, reduce costs, and enhance overall effectiveness.''';
  static Text retail = const Text("Retail Consulting Services : -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));
  static String companies =
      '''Companies offering retail consulting services leverage our IT solutions to manage their operations, data, and customer interactions. Our solutions help retail consulting companies optimize their supply chain, improve customer service, and increase their overall profitability.''';

  static Text transportation = const Text(
      "Transportation, Logistics & Distribution : -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));

  static String ourTeam =
      ''' Our team specializes in developing and implementing IT solutions that help companies manage large amounts of data and optimize their logistics networks. With our solutions, companies can improve their logistics efficiency, reduce costs, and increase customer satisfaction.''';
}
