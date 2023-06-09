import 'package:chapter_6_practical/values/exports.dart';

class MyLists {

  static final List<String> labels = [
    "Drinks & Smoothies",
    "Life",
    "Health",
    "Comedy",
    "hygiene",
    "Pet",
    "Weather",
    "Science",
    "Economy"
  ];

  static List<NewsArticle> listOfArticle = [];

  static void convert() {
    for (int i = 0; i < MyMaps.news.length; i++) {
      listOfArticle
          .add(NewsArticle.fromJson(MyMaps.news[i] as Map<String, dynamic>));
    }
  }


  static List<BottomNavigationBarItem> bottomNavIcons(int bottomNavIndex) =>
      <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/home.png",
              color: AppValues.bottomNavBarItemColor(0, bottomNavIndex),
              height: AppValues.bottomNavBarItemHeight,
              width: AppValues.bottomNavBarItemWidth,
              fit: BoxFit.cover,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/shopping-cart.png",
              color: AppValues.bottomNavBarItemColor(1, bottomNavIndex),
              height: AppValues.bottomNavBarItemHeight,
              width: AppValues.bottomNavBarItemWidth,
              fit: BoxFit.cover,
            ),
            label: "Store"),
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/star_filled.png",
              color: AppValues.bottomNavBarItemColor(2, bottomNavIndex),
              height: AppValues.bottomNavBarItemHeight,
              width: AppValues.bottomNavBarItemWidth,
              fit: BoxFit.cover,
            ),
            label: "Favorite"),
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/gear.png",
              color: AppValues.bottomNavBarItemColor(3, bottomNavIndex),
              height: AppValues.bottomNavBarItemHeight,
              width: AppValues.bottomNavBarItemWidth,
              fit: BoxFit.cover,
            ),
            label: "Settings"),
      ];

  static final List<String> images =
      List.generate(13, (index) => "assets/images/news$index.jpeg");

  static final List<String> titles = [
    "UPS Delivery Guy is the most Dedicated Worker: Despite slippery & Icy Surface, He Doesn't Give Up",
    "At least 12 dead as truck crashes into nine cars and two minibuses in Turkey",
    "Race Trucks are Ready for The Challenge.",
    "Thousands of People from Different Religious Gather to celebrate",
    "Four mistakes to avoid while eating fruits, check out here",
    "Mukah man suffers minor burns while attempting to rescue parents from burning house",
    "5 Reasons Why Being A Dog Mom Is The Best Thing Ever",
    "Watch: Service dog remains close to man diagnosed with heart disease in heart-warming video",
    "Hero dog stabbed in the skull when defending his owner against an armed robber",
    "Russian official says U.S. exerting 'pressure and threats' over jailed WSJ reporter",
    "Leading EU CEOs warn Brussels data law could hurt competitiveness, cybersecurity ",
    "Ukraine war: 'Mad panic' as Russia evacuates town near Zaporizhzhia plant",
    "Ukraine-Russia war – live: Putin troops fail to capture Bakhmut before Victory Day deadline",
  ];

  static final List<String> desc = [
    "The video went viral after Walt Gorczowski uploaded it to YouTube and it now has over 2.56 million views! ",
    "The fatal pile-up happened when a truck driver crossed into the opposite carriageway, colliding with parked cars and minibuses of families saying goodbye to men leaving to carry out mandatory military service.",
    "Self-driving eighteen-wheelers are now on highways in states like California and Texas. But there are still human “safety drivers” behind the wheel. What will it take to get them out?",
    "Back in June at the end of Ramadan last year, thousands gathered... ",
    "Fruit is excellent for weight reduction since it has fiber, low calories, and water content. Many prefer to have fruit as a quick snack as it’s an excellent source of nutrients and vitamins that aid in maintaining a healthy diet.",
    "MUKAH (May 8): A 37-year-old man suffered burns while attempting to save his parents from a burning house in Kampung Kuala Lama here last night.",
    "Discover the joys of being a dog mom. Read on to learn about the top 5 reasons why having a furry friend is the best thing ever. From unconditional love to endless snuggles, find out why dogs truly are a woman's best friend.",
    "A clip capturing heartwarming moments when the service dog remained by Benson's side in hospital is doing the rounds on the internet.",
    "Hero dog is stabbed in the head as it saves its owner from street robber in Cape Town... but incredibly cheats death for emotional reunion",
    "A senior Russian official accused the United States on Tuesday of exerting “pressure and threats” on Moscow over the case of detained Wall Street Journal reporter Evan Gershkovich, state-owned news agencies reported.",
    "The CEOs of several leading European companies have urged the Commission to pull the brake on plans to regulate the use and access of data generated in the bloc arguing they could cause lasting damage to the bloc's competitiveness and cybersecurity",
    "Russia has sparked a 'mad panic' as it evacuates a town near the contested Zaporizhzhia nuclear power plant, a Ukrainian official says.",
    "Ukraine says Russia still pounding Bakhmut, has failed to capture it",
  ];

  static final List<String> descLarge = [
    '''It’s the holidays and everything is great. Well, almost great. When it comes to the holidays, some of us enjoy whining a bit to our colleagues and friends about how postal and delivery services have a hard time keeping up and sometimes end up being late. Which is a problem for those of us who need our packages delivered urgently.

However, there’s proof that some delivery company employees are doing their darndest to get your stuff to you no matter the time of the year or weather conditions. Case in point, one UPS delivery man was filmed by a security camera trying to bring a package up an icy driveway.

The video went viral after Walt Gorczowski uploaded it to YouTube and it now has over 2.56 million views! Not only that, UPS recognized the dedication the man showed and reached out to the YouTube community to ask for its help in identifying the delivery guy.''',
    '''The pile-up happened when a truck driver lost control on the Iskenderun-Antakya highway, crossing over into the opposite carriageway.

The truck collided with nine cars and two minibuses, the state-run Anadolu news agency reported.

Many of the vehicles were parked at the roadside near a petrol station as friends and relatives said goodbye to men leaving to carry out mandatory military service.

The private Demiroren news agency said the truck was carrying excavated earthquake rubble and hit another truck before crossing the highway at around 7pm local time (5pm UK time).

Health Minister Fahrettin Koca said fires broke out, and tweeted that 22 ambulances and three medical rescue teams were sent to the scene in Topbogazli.''',
    '''This article is part of our series on the Future of Transportation, which is exploring innovations and challenges that affect how we move about the world.

In March, a self-driving eighteen-wheeler spent more than five straight days hauling goods between Dallas and Atlanta. Running around the clock, it traveled more than 6,300 miles, making four round trips and delivering eight loads of freight.

The result of a partnership between Kodiak Robotics, a self-driving start-up, and U.S. Xpress, a traditional trucking company, this five-day drive demonstrated the enormous potential of autonomous trucks. A traditional truck, whose lone driver must stop and rest each day, would need more than 10 days to deliver the same freight.''',
    '''Back in June at the end of Ramadan last year, thousands gathered...  \n\n Read More at [News Blog](https://blogs.news.eu)''',
    '''Fruit is excellent for weight reduction since it has fiber, low calories, and water content. Many prefer to have fruit as a quick snack as it’s an excellent source of nutrients and vitamins that aid in maintaining a healthy diet.

Here’s a list of common blunders we make while eating fruits.

Fruit combined with anything
Fruits, if stays in the stoma ..

Read more at:
https://economictimes.indiatimes.com/news/new-updates/four-mistakes-to-avoid-while-eating-fruits-check-out-here/articleshow/96151188.cms?utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst''',
    '''A statement from the Fire and Rescue Department (Bomba) Sarawak operations centre said the man, who lived next door, had minor injuries on his hands and legs.

The Mukah fire station deployed nine firefighters to the scene after receiving a report at 9.53pm.

“Upon arrival at the scene, the operation commander reported that the incident involved a single-storey house measuring 40 feet by 40 feet that was already 90 per cent destroyed by fire.

“The fire also affected a house next door, which was slightly damaged in the incident,” said the statement.

According to the statement, the son noticed smoke coming from his parents’ house and had attempted to enter the burning building.

“He was informed later that his parents were outside when the fire occurred.

ADVERTISEMENT


“He was given first aid and sent to hospital for further treatment,” said the statement.

Firefighters conducted an overhaul to ensure the fire was fully extinguished.

The cause of the fire and total value of losses have yet to be ascertained.

''',
    '''For many, being a dog mom is one of the most fulfilling experiences in life. The unconditional love, loyalty, and companionship that dogs offer can make even the hardest of days feel a little brighter. The simple joys of playing fetch, going for walks, and cuddling up on the couch are enough to bring a smile to any dog mom's face. The unwavering devotion of a furry best friend is a source of comfort and happiness that cannot be matched.
Why Being A Dog Mom Is The Best Thing Ever
Being a dog mom truly is the best thing ever. Mr Ambarish Sikarwar, Business Head, Zigly talks about the top five reasons why being a dog mom is the best thing ever.
recommended by



OLYMP TRADE
A 26-Year-Old Girl From Ahmedabad Became A Millionaire OvernightLEARN MORE
Related News
Beware Sharing Your Bed With Pets Can Be Fatal Can Cause Meningitis Zoonotic Infections And Even Plague
Beware! Sharing Your Bed With Pets Can Be Fatal; Can Cause Meningitis, Zoonotic Infections And Even Plague

Train Travel With Furry Friends Set To Get Easier Railways To Begin Online Bookings For Pets Soon
Train Travel With Furry Friends Set To Get Easier! Railways To Begin Online Bookings For Pets Soon

1. Unconditional Love
One of the most significant benefits of being a dog mom is the unconditional love that dogs offer. Dogs are always happy to see their owners and love them no matter what. They are not judgmental and do not hold grudges, making them the perfect companion for anyone. When you come home after a long day at work, your dog is always there to greet you with a wagging tail and a big smile. They are always ready to cuddle, play, and offer comfort when you need it the most. Being a dog mom means that you get to experience this unconditional love every single day.
2. Improved Mental Health
Research has shown that owning a dog can have a positive impact on mental health. Dogs can help reduce stress and anxiety, boost mood, and provide a sense of purpose and meaning in life. Studies have also found that dogs can help reduce symptoms of depression, loneliness, and social isolation. As a dog mom, you get to experience these benefits first-hand. Spending time with your furry friend can help you feel calmer, more relaxed, and less stressed.
3. Companionship
Dogs are social animals and thrive on human companionship. They enjoy spending time with their parents and are always up for a game of fetch or a cuddle on the couch. Being a dog mom means that you get to experience the joy of having a loyal and loving companion by your side. Dogs are also great for people who live alone or are away from home for long periods.
Related News
This Photo Of Dog Waiting For Its Owners In Violence-Hit Manipur Will Break Your Heart
This Photo Of Dog Waiting For Its Owners In Violence-Hit Manipur Will Break Your Heart

Show Your Love on Mothers Day with These 6 Affordable Tech Gadgets
Show Your Love on Mother's Day with These 6 Affordable Tech Gadgets

4. Improved Physical Health
Dogs need exercise, and taking them for walks or playing with them in the backyard can help you get some exercise too. Studies have found that dog owners are more likely to get the recommended amount of daily exercise than non-dog owners. In addition to exercise, dogs can also help improve cardiovascular health. Research has shown that owning a dog can lower blood pressure, reduce cholesterol levels, and decrease the risk of heart disease. Being a dog mom means that you get to experience these physical health benefits, which can help you live a longer and healthier life.
5. Responsibility
Being a dog mom is a big responsibility. Dogs need love, attention, and care, and being responsible for meeting these needs can be incredibly fulfilling. As a dog mom, you get to experience the joy of nurturing and caring for another living being. Taking care of a dog also teaches responsibility, patience, and empathy. It can help children develop a sense of responsibility and help them learn how to care for another living being. As a dog mom, you get to experience the joy of watching your dog grow and develop under your care.
In conclusion, being a dog mom is one of the best things ever. It is a rewarding experience that brings joy, love, and companionship into your life. From unwavering loyalty to endless entertainment, there are countless reasons why having a furry friend is a true blessing. So, if you are considering becoming a dog mom, take the leap and experience all the amazing benefits that come with it.
Follow us on: News''',
    '''When Brian Benson was diagnosed with cardiomyopathy, a condition making it hard for the heart to pump blood to other parts of the body, his service dog Magnus turned out to be his solace. A clip capturing heartwarming moments when the service dog remained by Benson’s side in hospital is doing the rounds on the internet.''',
    '''A heroic dog has made a miracle recovery after being stabbed in the skull when defending his owner against an armed robber in South Africa.  

Gino Wensel, 40, was exercising his faithful German Shepherd called Duke when suddenly he became aware of a man coming towards him with a knife in his hand.

Duke did not hesitate, but bared his fangs and growled at the thug, who turned on the dog and plunged a steak knife with all his force into its skull.

A true hero: Duke the German Shepherd stepped in to defend his owner Gino Wensel from an armed robber, and was brutally attacked with a knife
+10
View gallery
A true hero: Duke the German Shepherd stepped in to defend his owner Gino Wensel from an armed robber, and was brutally attacked with a knife

Shocking: An X-ray shows how deep the knife had been plunged into the dog's head
+10
View gallery
Shocking: An X-ray shows how deep the knife had been plunged into the dog's head

My saviour: Duke likely saved Mr Wensel's life, and the pair had an emotional reunion once brave dog had come out of surgery
+10
View gallery
My saviour: Duke likely saved Mr Wensel's life, and the pair had an emotional reunion once brave dog had come out of surgery

Despite the blade lodged in his head, the fearless dog went for the attacker, and managed to scare him off before collapsing in a heap with blood pouring from the head wound.

Mr Wensel initially thought he was dead, but then he saw his dog was still breathing and called a friend who drove them to the Animal Welfare Society of South Africa (AWSSA) which is a charity that cares for all animals.''',
    '''A senior Russian official accused the United States on Tuesday of exerting “pressure and threats” on Moscow over the case of detained Wall Street Journal reporter Evan Gershkovich, state-owned news agencies reported.

TASS quoted Deputy Foreign Minister Sergei Ryabkov as saying Moscow would ignore such tactics. He did not say what form the alleged pressure had taken.

Gershkovich was arrested in March and accused of espionage, which he and his newspaper deny. The United States says he has been wrongfully detained and is attempting to gain his release.

“Dialogue involves searching for some sort of solutions. On the American side we see only attempts at pressure and threats. This is not the way to conduct dialogue,” TASS quoted Ryabkov as saying.

Russia will consider requests for consular access to Gershkovich “in a calm working vein, regardless of attempts by the Americans to exert this or that pressure”, he said.

Last month, Moscow rejected a U.S. embassy request to visit Gershkovich after Washington refused to grant visas to a group of Russian journalists assigned to accompany Russia‘s Foreign Minister Sergei Lavrov to the United Nations in New York.

Relations between Moscow and Washington have hit rock bottom since the Russian invasion of Ukraine on Feb. 24, 2022.

Gershkovich’s arrest - the first time an American reporter had been accused of spying in Russia since 1986 - was widely seen in the West as a move by Moscow to secure a bargaining chip to trade in a prisoner release.

Ryabkov has previously said that any exchange could only be considered after a court has reached a verdict in the case.''',
    '''The CEOs of several leading European companies have urged the Commission to pull the brake on plans to regulate the use and access of data generated in the bloc arguing they could cause lasting damage to the bloc's competitiveness and cybersecurity.

In a letter sent to Commission President Ursula von der Leyen and Competition Commissioner Margrethe Vestager last week and seen by Euronews, they wrote of their "deep concerns" about the content and speed of the inter-institutional negotiations over the Data Act warning that the legislation could, in its current form, endanger European leadership and innovation.

The signatories of the letter — which include the CEOs of Siemens AG and Healthineers, SAP, Brainlab and Datev — demand to be received by the EU's executive at their "earliest convenience".

The European Data Act was unveiled by the Commission in February 2022 to create harmonised rules on fair access to and use of data across the 27 countries of the bloc. It is meant to allow for easier data sharing between businesses and consumers, businesses and businesses and businesses and governments as well as enabling customers to effectively switch between different cloud data-processing services providers.

The Commission said at the time that the law would create a fair digital environment, stimulate a competitive data market, open opportunities for data-driven innovation and make data more accessible for all.


3

But the five CEOs and DigitaLEurope, a trade organisation representing digitally transforming industries across the bloc, say the trilogue negotiations between the Commission, MEPs and member states are now going at "break-neck speed" and that there is "little room to discuss these complex details in depth".

They argue, for instance, that being forced to share data with other companies could not only lead them to reveal details about their internal systems, processes, or technologies that could leave them vulnerable to malicious actors, but also benefit competitors, especially third-country operators who may not have to abide by the same rules. 

"This not only undermines EU competitiveness and innovation, but also raises questions regarding EU technology leadership," they write.

Stefan Vielsmeier, CEO of Brainlab, added in a statement that "the proposed regulation will rather weaken Europe’s economy in competing with especially China, by forcing companies to reveal an unprecedented level of insight into related business practices and value chains."

They, therefore, call for the implementation of safeguards. These include the right to refuse to share data with other businesses where trade secrets, cybersecurity, health and safety are at risk, the assurance that when governments demand access to data, it is "proportionate and limited to clearly defined emergency situations, types of data and public bodies".

Euronews has reached out to the European Commission for comment.

''',
    '''Russia has told people to leave 18 settlements in the Zaporizhzhia region, including Enerhodar near the plant, ahead of Kyiv's anticipated offensive.

The Ukrainian mayor of Melitopol, Ivan Fedorov, said there were five-hour waits as thousands of cars left.

The UN's nuclear watchdog warned a "severe nuclear accident" could occur.

Speaking to the BBC's Newshour programme Rafael Grossi - the director of the International Atomic Energy Agency (IAEA) - said the evacuation of residents near the nuclear plant indicated the possibility of heavy fighting between Russian and Ukrainian forces around the plant.

Although the plant's reactors were not producing electricity they were still loaded with nuclear material, he said.

Mr Grossi added that he had had to travel through a minefield when he visited the plant a few weeks ago.

Earlier, the IAEA warned in a statement that situation at the Zaporizhzhia plant was "becoming increasingly unpredictable and potentially dangerous".

Operating staff were still at the site but there was "deep concern about the increasingly tense, stressful, and challenging conditions for personnel and their families".

It said IAEA experts at the plant had "received information that the announced evacuation of residents from the nearby town of Enerhodar - where most plant staff live - has started".

On Friday, the Russian-installed regional head Yevgeny Balitsky said that "in the past few days, the enemy has stepped up shelling of settlements close to the front line".

"I have therefore made a decision to evacuate first of all children and parents, elderly people, disabled people and hospital patients," he wrote on social media. .

The IAEA has issued warnings previously about safety at the plant - which Russia captured in the opening days of its invasion last year - after shelling caused temporary power cuts.

In March the IAEA warned the plant was running on diesel generators to keep vital cooling systems going, after damage to power lines.

Since Russia launched its invasion in February 2022 the number of staff at the plant has declined, the IAEA says, "but site management has stated that it has remained sufficient for the safe operation of the plant".

Russian forces occupy much of the Zaporizhzhia region but not the regional capital Zaporizhzhia, which lies just north-east of Enerhodar across the Dnipro reservoir.

On Sunday, the Ukrainian general staff said civilians were being evacuated to the cities of Berdyansk and Prymorsk, further inside Russian-held territory.

The exiled mayor of Melitopol, Ivan Fedorov, wrote on Telegram that shops in the evacuated areas had run out of goods and medicine.

He also said hospitals were discharging patients into the street amid fears that electricity and water supplies could be suspended if Ukraine attacks the region.

And he claimed that two-thirds of evacuation convoys - allegedly made up of civilians - consisted of retreating Russian troops. The BBC cannot verify this claim.

"The partial evacuation they announced is going too fast, and there is a possibility that they may be preparing for provocations and (for that reason) focusing on civilians," Mr Fedorov added.

''',
    '''Vladimir Putin’s forces were still attacking the eastern city of Bakhmut today, missing a deadline to capture the highly contested site before Russia’s Victory Day.

A Ukrainian general said on Sunday that Russian forces were hoping to capture Bakhmut before the annual holiday when Russia marks the Soviet victory over Nazi Germany in World War Two.


“The enemy has not taken Bakhmut,” Serhiy Cherevaty, spokesman for Ukraine‘s eastern command, said by telephone. “There are no significant changes in positions.”

Ukraine‘s military is preparing a widely anticipated counteroffensive to try to recapture Russian-occupied territory in the south and east.

Russian and Ukrainian forces have been fighting over Bakhmut for months. Russia sees capturing Bakhmut as a stepping stone to taking other Ukrainian cities.

It comes as Putin addressed the Victory Day parade this morning, centred on the West encouraging “Russophobia”.

The president said: “Today we have a real war waged against us but we will be defending ourselves against international terrorism.”''',
  ];
}
