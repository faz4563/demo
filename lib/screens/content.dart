import 'package:demo/screens/INDUSTRIES%20WE%20SERVE/industriesWeServe.dart';
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
  static Text ourteamofTechnicians = const Text(
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

  static Text whoWeAre = const Text("Who We Are: -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));

  static String basedIn =
      "Based in Calgary, Canada, Avancer helps small and medium businesses navigate the complexity of IT infrastructure by providing enterprise-grade professional IT solutions.";

  static Text ourCompany = const Text("Our Company: -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));

  static String inFrench =
      '''In french, Avancer means Move Forward. As the meaning implies, Avancer keeps moving forward for our customers, upgrading our arsenal with advanced technology and training our team to keep up with the trends. At Avancer, we are committed to helping SMBs make progress by providing high-impact IT infrastructure professional solutions.

  When the pandemic-induced lockdowns stalled the whole world, the bigger organizations had the expertise and technological capabilities to run the operations. Hyperlocal businesses and SMBs, on the other hand, were struggling to comprehend the unprecedented market shift. We at Avancer understood the predicament of SMBs. We scaled up our business, dedicated to making SMBs future-proof. Capitalizing on our multi-disciplinary experience, we began providing professional IT infrastructure solutions, helping SMBs modernize their business and meet the market's evolving needs. Our speciality lies in our capability to grasp the problem and craft customized IT solutions within your budget.

  At Avancer, we hold "IT Modernisation is the outcome of a habit, not a Random act". Our exceptional IT consulting services help businesses embrace modernization and save on IT expenses. We effectively support your infrastructure with expert-to-expert oversight and on-demand staff, enabling you to focus on business operations and increase productivity. Additionally, with Avancer, businesses can hire an engineer at a moment's notice to help with regular maintenance, software upgrades, troubleshooting, training, or IT crisis resolution.
''';

  static Text ourVision = const Text("Our Vision : -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));

  static String toBuild =
      "To build a future where businesses, irrespective of size,  have access to intuitive, reliable, and secure technology solutions.";

  static Text ourMission = const Text("Our Mission : -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));

  static String toDevelope =
      "To develop a strategic IT plan aligning with your business goals and provide high-impact IT infrastructure professional solutions.";

  static Text ourTeam = const Text("Our Team  : -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));

  static String fromExpert =
      "From expert advice on designing or implementing the latest technology to taking on the responsibility of your IT infrastructure, our team is ready to help.[Team Members Photos]";

  static Text whyUs = const Text("Why Us: -",
      style: TextStyle(
          letterSpacing: 1,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700));

  static String marketInteligence = '''Market Intelligence
  Expert Team
  Data-Driven Strategies
  Guaranteed results
  Disruptive technologies
  Affordable
  ''';
}
