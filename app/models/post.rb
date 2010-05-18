class Post < Struct.new(:number, :title, :url)
  ARTICLES = [
    new(132, "picked their own fruit", "2010/03/14/132-picking-their-own-fruit"),
    new(131, "likes Conan O’Brien", "2010/01/13/130-conan-obrien"),
    new(130, "wore Ray-Ban Wayfarers", "2009/12/22/130-ray-ban-wayfarers"),
    new(129, "likes Banksy", "2009/10/04/129-banksy"),
    new(128, "went camping", "2009/08/14/128-camping"),
    new(127, "read \"Where The Wild Things Are\"", "2009/07/13/127-where-the-wild-things-are"),
    new(126, "rode on a Vespa scooter", "2009/06/02/126-vespa-scooters"),
    new(125, "listened to Bob Marley",  "2009/04/22/125-bob-marley"),
    new(124, "hates someone who wears Ed Hardy", "124-hating-people-who-wear-ed-hardy"),
    new(123, "watched a season of Mad Men", "123-mad-men"),
    new(122, "owns a Moleskine notebook", "122-moleskine-notebooks"),
    new(121, "Funny or Ironic Tattoos", "121-funny-or-ironic-tattoos"),
    new(120, "took a year off from work or school", "120-taking-a-year-off"),
    new(119, "cooked with sea salt", "119-sea-salt"),
    new(118, "went to an ugly sweater party", "118-ugly-sweater-parties"),
    new(117, "feels bad for a political prisoner", "117-political-prisoners"),
    new(116, "celebrated old music by a black musician", "116-black-music-that-black-people-dont-listen-to-anymore"),
    new(115, "wished they learned a new language", "115-promising-to-learn-a-new-language"),
    new(114, "loves America", "114-america"),
    new(113, "wore a costume on Halloween", "113-halloween"),
    new(112, "ate a tub of hummus", "112-hummus"),
    new(111, "wore a pea coat", "111-pea-coats"),
    new(110, "played ultimate frisbee", "110-frisbee-sports"),
    new(109, "reads The Onion", "109-the-onion"),
    new(108, "pretended to enjoy classical Music", "108-appearing-to-enjoy-classical-music"),
    new(107, "made a hip hop reference", "107-self-aware-hip-hop-references"),
    new(106, "joined Facebook", "106-facebook"),
    new(105, "worked at an unpaid internship", "105-unpaid-internships"),
    new(104, "likes a girl with bangs", "104-girls-with-bangs"),
    new(103, "wore a sweater", "104-sweaters"),
    new(102, "played a children games", "102-childrens-games-as-adults"),
    new(101, "became offended by someone's prejudice", "2008/05/28/101-being-offended"),
    new(100, "has bumper stickers on their car", "2008/05/21/100-bumper-stickers"),
    new(99, "corrected someone's grammar", "2008/05/12/99-grammar"),
    new(98, "envies the Ivy League", "2008/05/06/98-the-ivy-league"),
    new(97, "wore a scarf", "2008/04/30/97-scarves"),
    new(96, "New Balance Shoes", "2008/04/20/96-new-balance-shoes"),
    new(95, "played Rugby", "2008/04/10/95-rugby"),
    new(94, "wants free healthcare", "2008/04/04/94-free-healthcare"),
    new(93, "pirated music", "2008/03/30/93-music-piracy"),
    new(92, "bought the book \"Stuff White People Like\"", "2008/03/26/92-book-deals"),
    new(91, "travelled to San Francisco", "2008/03/23/91-san-francisco"),
    new(90, "hosted a dinner party", "2008/03/18/88-dinner-parties"),
    new(89, "celebrated St. Patrick's Day", "2008/03/16/89-saint-patricks-day"),
    new(88, "has a gay friend", "2008/03/14/88-having-gay-friends"),
    new(87, "spent too much on outdoor performance clothes", "2008/03/11/87-outdoor-performance-clothes"),
    new(86, "wore shorts", "2008/03/11/86-shorts"),
    new(85, "watched a season of The Wire", "2008/03/09/85-the-wire"),
    new(84, "bought a clever t-shirt", "2008/03/07/84-t-shirts"),
    new(83, "has bad memories of high school", "2008/03/06/83-bad-memories-of-high-school"),
    new(82, "hates a corporation", "2008/03/05/82-hating-corporations"),
    new(81, "went to graduate school", "2008/03/04/81-graduate-school"),
    new(80, "talked about playing soccer", "2008/03/03/80-the-idea-of-soccer"),
    new(79, "bought modern furniture", "2008/03/02/79-modern-furniture"),
    new(78, "appreciates a multilingual child", "2008/02/28/78-multilingual-children"),
    new(77, "enjoyed a musical comedy", "2008/02/28/77-musical-comedy"),
    new(76, "bought bottled water", "2008/02/26/76-bottles-of-water"),
    new(75, "threatened to move to Canada", "2008/02/24/75-threatening-to-move-to-canada"),
    new(74, "went to an Oscar party", "2008/02/24/74-oscar-parties"),
    new(73, "helped gentrify a neighborhood", "2008/02/22/73-gentrification"),
    new(72, "studied abroad", "2008/02/22/72-study-abroad"),
    new(71, "was the only white person around", "2008/02/20/71-being-the-only-white-person-around"),
    new(70, "had a difficult breakup", "2008/02/18/70-difficult-breakups"),
    new(69, "listened to Mos Def", "2008/02/17/69-mos-def"),
    new(68, "watched a Michel Gondry movie", "2008/02/17/68-michel-gondry"),
    new(67, "stood still at a concert", "2008/02/17/68-standing-still-at-concerts"),
    new(66, "got a divorce", "2008/02/15/68-divorce"),
    new(65, "played on a co-ed team", "2008/02/14/67-co-ed-sports"),
    new(64, "recycled", "2008/02/14/66-recycling"),
    new(63, "bought an overpriced sandwich", "2008/02/11/63-expensive-sandwiches"),
    new(62, "knows what's best for poor people", "2008/02/10/62-knowing-whats-best-for-poor-people"),
    new(61, "rode a bicycle", "2008/02/10/61-bicycles"),
    new(60, "commuted in a Toyota Prius", "2008/02/07/60-toyota-prius"),
    new(59, "tried naturopathy", "2008/02/07/59-natural-medicine"),
    new(58, "researched Japan", "2008/02/07/58-japan"),
    new(57, "watched Juno" "2008/02/06/57-juno"),
    new(56, "became friends with a lawyer", "2008/02/06/56-lawyers"),
    new(55, "gave an apology", "2008/02/05/55-apologies"),
    new(54, "bought an unused kitchen gadget", "2008/02/05/54-kitchen-gadgets"),
    new(53, "walked a dog", "2008/02/04/53-dogs"),
    new(52, "laughed at Sarah Silverman", "2008/02/04/52-sarah-silverman"),
    new(51, "lived by the water", "2008/02/04/51-living-by-the-water"),
    new(50, "did something ironic", "2008/02/03/50-irony"),
    new(49, "bought vintage clothing", "2008/02/03/49-vintage"),
    new(48, "shopped at Whole Foods", "2008/02/03/48-whole-foods-and-grocery-co-ops"),
    new(47, "has an art degree", "2008/02/01/47-arts-degrees"),
    new(46, "read the Sunday New York Times", "2008/01/31/45-the-sunday-new-york-times"),
    new(45, "ate at an Asian Fusion Restaurant", "2008/01/31/45-asian-fusion-food"),
    new(44, "listened to public radio", "2008/01/31/44-public-radio"),
    new(43, "went to a play", "2008/01/30/43-plays"),
    new(42, "ate sushi", "2008/01/30/42-sushi"),
    new(41, "went to an indie rock concert", "2008/01/30/40-indie-music"),
    new(40, "bought an Apple product", "2008/01/30/39-apple-products"),
    new(39, "subscribed to Netflix", "2008/01/29/38-netflix"),
    new(38, "watched a season of Arrested Development", "2008/01/29/38-arrested-development"),
    new(37, "remodeled a house", "2008/01/29/37-renovations"),
    new(36, "went to their favorite breakfast place", "2008/01/28/36-breakfast-places"),
    new(35, "watched The Daily Show every day of the week", "2008/01/28/35-the-daily-showcolbert-report"),
    new(34, "appreciate architecture", "2008/01/28/34-architecture"),
    new(33, "smoked marijuana", "2008/01/27/33-marijuana"),
    new(32, "became a vegetarian", "2008/01/27/32-veganvegetarianism"),
    new(31, "went snowboarding", "2008/01/27/31-snowboarding"),
    new(30, "watched Chicago Cubs at Wrigley Field", "2008/01/27/30-wrigley-field"),
    new(29, "partied on 80s night", "2008/01/27/29-80s-night"),
    new(28, "doesn't have a TV", "2008/01/26/28-not-having-a-tv"),
    new(27, "ran a marathon", "2008/01/26/27-marathons"),
    new(26, "went to Manhattan", "2008/01/26/26-new-york-city"),
    new(25, "likes David Sedaris", "2008/01/26/25-david-sedaris"),
    new(24, "went wine tasting", "2008/01/25/24-wine"),
    new(23, "bought microbrew", "2008/01/24/23-microbreweries"),
    new(22, "has two last names", "2008/01/24/22-having-two-last-names"),
    new(21, "went to a writers workshop", "2008/01/23/21-writers-workshops"),
    new(20, "learned about someone else's culture", "2008/01/23/20-being-an-expert-on-your-culture"),
    new(19, "travelled to Europe", "2008/01/23/19-travelling"),
    new(18, "raised awareness", "2008/01/23/18-awareness"),
    new(17, "hates their parents", "2008/01/22/16-hating-your-parents"),
    new(16, "likes a gifted child", "2008/01/22/17-gifted-children"),
    new(15, "did yoga", "2008/01/22/15-yoga"),
    new(14, "has a black friend", "2008/01/21/14-having-black-friends"),
    new(13, "drank tea", "2008/01/21/13-tea"),
    new(12, "worked for a non-profit", "2008/01/21/12-non-profit-organizations"),
    new(11, "likes an asian girl", "2008/01/20/11-asian-girls"),
    new(10, "watched a Wes Anderson movie", "2008/01/20/11-wes-anderson-movies"),
    new(9, "made someone feel bad about not going outside", "2008/01/20/9-making-you-feel-bad-about-not-going-outside"),
    new(8, "voted for Barack Obama", "2008/01/19/8-barack-obama"),
    new(7, "celebrated diversity", "2008/01/19/7-diversity"),
    new(6, "ate organic food", "2008/01/19/6-organic-food"),
    new(5, "went to a farmer's market", "2008/01/18/5-farmers-markets"),
    new(4, "gave an assist", "2008/01/18/4-assists"),
    new(3, "went to a film festival", "2008/01/18/3-film-festivals"),
    new(2, "joined a religion their parents don't belong to", "2008/01/18/2-religions-that-their-parents-dont-belong-to"),
    new(1, "drank coffee", "2008/01/18/1-coffee")
  ]

  class << self
    def find(number)
      articles_by_number[number.to_i]
    end
    
    def all
      ARTICLES
    end

    def count
      ARTICLES.size
    end

    private
      def articles_by_number
        @@articles_by_number ||= ARTICLES.index_by(&:number)
      end
  end

  extend ActiveModel::Naming
  
  def to_param
    number
  end

  include Comparable
  def <=>(post)
    number <=> post.number
  end

  def accomplishments
    Accomplishment.where :post_number => number
  end
end