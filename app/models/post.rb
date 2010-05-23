class Post < Struct.new(:number, :title, :question, :url)
  ARTICLES = [
    new(132, "picked {possessive} own fruit", "have you picked your own fruit", "2010/03/14/132-picking-{possessive}-own-fruit"),
    new(131, "likes Conan O’Brien", "do you like Conan O’Brien", "2010/01/13/130-conan-obrien"),
    new(130, "wore Ray-Ban Wayfarers", "did you wear Ray-Bans", "2009/12/22/130-ray-ban-wayfarers"),
    new(129, "likes Banksy", "do you like Banksy", "2009/10/04/129-banksy"),
    new(128, "went camping", "have you been camping", "2009/08/14/128-camping"),
    new(127, "read \"Where The Wild Things Are\"", "have you read \"Where The Wild Things Are\"", "2009/07/13/127-where-the-wild-things-are"),
    new(126, "rode on a Vespa scooter", "have you ridden a Vespa scooter", "2009/06/02/126-vespa-scooters"),
    new(125, "listens to Bob Marley", "do you listen to Bob Marley", "2009/04/22/125-bob-marley"),
    new(124, "hates someone who wears Ed Hardy", "do you hate someone who wears Ed Hardy", "124-hating-people-who-wear-ed-hardy"),
    new(123, "watched a season of Mad Men", "have you watched a season of Mad Men", "123-mad-men"),
    new(122, "owns a Moleskine notebook", "do you own a Moleksine notebook", "122-moleskine-notebooks"),
    new(121, "has a funny tattoo", "do you have a funny tattoo", "121-funny-or-ironic-tattoos"),
    new(120, "took a year off from work or school", "have you taken a year off work or school", "120-taking-a-year-off"),
    new(119, "cooked with sea salt", "have you cooked with sea salt", "119-sea-salt"),
    new(118, "went to an ugly sweater party", "did you go to an ugly sweater party", "118-ugly-sweater-parties"),
    new(117, "feels bad for a political prisoner", "do you feel bad for a political prisoner", "117-political-prisoners"),
    new(116, "celebrated old music by a black musician", "do you celebrate old music by a black musician", "116-black-music-that-black-people-dont-listen-to-anymore"),
    new(115, "promises to learn a new language", "do you want to learn a new language", "115-promising-to-learn-a-new-language"),
    new(114, "loves America", "do you love america", "114-america"),
    new(113, "put a lot of effort into a Halloween costume", "have you put a lot of effort into a Halloween costume", "113-halloween"),
    new(112, "ate a tub of hummus", "have you eaten a tub of hummus", "112-hummus"),
    new(111, "wears a pea coat all winter", "do you wear a pea coat all winter", "111-pea-coats"),
    new(110, "plays ultimate frisbee", "do you play ultimate frisbee", "110-frisbee-sports"),
    new(109, "reads The Onion", "do you read The Onion", "109-the-onion"),
    new(108, "pretended to enjoy classical music", "have you pretended to enjoy classical music", "108-appearing-to-enjoy-classical-music"),
    new(107, "made a hip hop reference", "have you made a hip hop reference", "107-self-aware-hip-hop-references"),
    new(106, "joined Facebook", "are you on Facebook", "106-facebook"),
    new(105, "worked at an unpaid internship", "have you worked at an unpaid internship", "105-unpaid-internships"),
    new(104, "likes a girl with bangs", "do you like a girl with bangs", "104-girls-with-bangs"),
    new(103, "wore a sweater", "have you worn a sweater", "104-sweaters"),
    new(102, "plays children games", "do you play children games" "102-childrens-games-as-adults"),
    new(101, "became offended by a prejudice comment", "have you become offended by a prejudice comment" "2008/05/28/101-being-offended"),
    new(100, "has bumper stickers on {possessive} car", "does your car have bumper stickers", "2008/05/21/100-bumper-stickers"),
    new(99, "corrects everyone's grammar", "do you correct everyone's grammar", "2008/05/12/99-grammar"),
    new(98, "envies the Ivy League", "do you envy Ivy League schools", "2008/05/06/98-the-ivy-league"),
    new(97, "wore a scarf", "have you worn a scarf", "2008/04/30/97-scarves"),
    new(96, "owns New Balance shoes", "do you own New Balance shoes" "2008/04/20/96-new-balance-shoes"),
    new(95, "played Rugby", "have you played Rugby", "2008/04/10/95-rugby"),
    new(94, "wants free healthcare", "do you want free healthcare" "2008/04/04/94-free-healthcare"),
    new(93, "owns pirated music", "do you own pirated music", "2008/03/30/93-music-piracy"),
    new(92, "bought the book \"Stuff White People Like\"", "do you own the book \"Stuff White People Like\"", "2008/03/26/92-book-deals"),
    new(91, "travelled to San Francisco", "have you travelled to San Francisco", "2008/03/23/91-san-francisco"),
    new(90, "hosted a dinner party", "have you hosted a dinner party", "2008/03/18/88-dinner-parties"),
    new(89, "celebrates St. Patrick's Day", "do you celebrate St. Patrick's Day", "2008/03/16/89-saint-patricks-day"),
    new(88, "has a gay friend", "do you have a gay friend", "2008/03/14/88-having-gay-friends"),
    new(87, "spends too much on outdoor performance clothes", "do you spend too much on outdoor performance clothes", "2008/03/11/87-outdoor-performance-clothes"),
    new(86, "wore shorts on a cold day", "have you worn shorts on a cold day", "2008/03/11/86-shorts"),
    new(85, "watched a season of The Wire", "have you watched a season of The Wire", "2008/03/09/85-the-wire"),
    new(84, "owns a clever t-shirt", "do you own a clever t-shirt", "2008/03/07/84-t-shirts"),
    new(83, "has bad memories of high school", "do you have bad memories of high school", "2008/03/06/83-bad-memories-of-high-school"),
    new(82, "hates large corporations", "do you hate large corporations", "2008/03/05/82-hating-corporations"),
    new(81, "went to graduate school", "have you been to graduate school", "2008/03/04/81-graduate-school"),
    new(80, "talked about playing soccer", "do you talk about playing soccer", "2008/03/03/80-the-idea-of-soccer"),
    new(79, "buys modern furniture", "do you buy modern furniture", "2008/03/02/79-modern-furniture"),
    new(78, "appreciates a multilingual child", "do you appreciate a multilingual child", "2008/02/28/78-multilingual-children"),
    new(77, "enjoyed musical comedy", "have you enjoyed a musical comedy", "2008/02/28/77-musical-comedy"),
    new(76, "buys bottled water", "do you buy bottled water", "2008/02/26/76-bottles-of-water"),
    new(75, "threatened to move to Canada", "have you threatened to move to Canada", "2008/02/24/75-threatening-to-move-to-canada"),
    new(74, "went to an Oscar party", "have you been to an Oscar party", "2008/02/24/74-oscar-parties"),
    new(73, "helped gentrify a neighborhood", "have you helped gentrify a neighborhood", "2008/02/22/73-gentrification"),
    new(72, "studied abroad", "have you studied abroad", "2008/02/22/72-study-abroad"),
    new(71, "was the only white person around", "have you ever been the only white person around", "2008/02/20/71-being-the-only-white-person-around"),
    new(70, "had a difficult breakup", "have you been in a difficult breakup", "2008/02/18/70-difficult-breakups"),
    new(69, "listens to Mos Def", "do you listen to Mos Def", "2008/02/17/69-mos-def"),
    new(68, "watched a Michel Gondry movie", "have you watched a Michel Gondry movie", "2008/02/17/68-michel-gondry"),
    new(67, "stands still at concerts", "do you stand still at concerts", "2008/02/17/68-standing-still-at-concerts"),
    new(66, "got a divorce", "have you gotten a divorce", "2008/02/15/68-divorce"),
    new(65, "plays on a co-ed team", "do you play on a co-ed team", "2008/02/14/67-co-ed-sports"),
    new(64, "recycles everything", "do you recycle everything", """2008/02/14/66-recycling"),
    new(63, "bought an overpriced sandwich", "did you ever buy an overpriced sandwich", "2008/02/11/63-expensive-sandwiches"),
    new(62, "knows what's best for poor people", "do you know what's best for poor people", "2008/02/10/62-knowing-whats-best-for-poor-people"),
    new(61, "rides a bicycle", "do you ride a bicycle", "2008/02/10/61-bicycles"),
    new(60, "commutes in a Toyota Prius", "do you commute in a Toyota Prius", "2008/02/07/60-toyota-prius"),
    new(59, "tried naturopathy", "have you tried naturopathy", "2008/02/07/59-natural-medicine"),
    new(58, "researched Japan", "have you researched Japan", "2008/02/07/58-japan"),
    new(57, "watched Juno", "have you watched Juno", "2008/02/06/57-juno"),
    new(56, "is friends with a lawyer", "are you friends with a lawyer", "2008/02/06/56-lawyers"),
    new(55, "gave an apology", "have you recently given an apology", "2008/02/05/55-apologies"),
    new(54, "bought a kitchen gadget and never used it", "have you bought a kitched gadget and never used it", "2008/02/05/54-kitchen-gadgets"),
    new(53, "walked a dog", "have you walked a dog recently", "2008/02/04/53-dogs"),
    new(52, "laughed at a Sarah Silverman joke", "have you laughed at a Sarah Silverman joke", "2008/02/04/52-sarah-silverman"),
    new(51, "lived by the water", "have you lived by the water", "2008/02/04/51-living-by-the-water"),
    new(50, "did something ironic", "have you done something ironic recently", "2008/02/03/50-irony"),
    new(49, "buys vintage clothing", "do you buy vintage clothing", "2008/02/03/49-vintage"),
    new(48, "shopped at Whole Foods", "have you shopped at Whole Foods", "2008/02/03/48-whole-foods-and-grocery-co-ops"),
    new(47, "has an art degree", "do you have an art degree", "2008/02/01/47-arts-degrees"),
    new(46, "read the Sunday New York Times", "have you read the Sunday New York Times", "2008/01/31/45-the-sunday-new-york-times"),
    new(45, "ate at an Asian Fusion restaurant", "have you eaten at an Asian Fusion restaurant", "2008/01/31/45-asian-fusion-food"),
    new(44, "listened to public radio", "have you listened to public radio", "2008/01/31/44-public-radio"),
    new(43, "enjoyed a play", "have you enjoyed a play", "2008/01/30/43-plays"),
    new(42, "ate sushi", "have you eaten sushi", "2008/01/30/42-sushi"),
    new(41, "went to an indie rock concert", "have you been to an indie concert", "2008/01/30/40-indie-music"),
    new(40, "owns multiple Apple products", "do you own multiple Apple products", "2008/01/30/39-apple-products"),
    new(39, "is subscribed to Netflix", "are you subscribed to Netflix", "2008/01/29/38-netflix"),
    new(38, "watched a season of Arrested Development", "have you watched a season of Arrested Development", "2008/01/29/38-arrested-development"),
    new(37, "remodeled a house", "have you remodeled a house", "2008/01/29/37-renovations"),
    new(36, "has a favorite breakfast place", "do you have a favorite breakfast place", "2008/01/28/36-breakfast-places"),
    new(35, "watched The Daily Show every day of the week", "have you watched The Daily Show every day of the week", "2008/01/28/35-the-daily-showcolbert-report"),
    new(34, "appreciate architecture", "do you appreciate architecture", "2008/01/28/34-architecture"),
    new(33, "smoked marijuana", "have you smoked marijuana", "2008/01/27/33-marijuana"),
    new(32, "tried being a vegetarian", "have you tried being a vegetarian", "2008/01/27/32-veganvegetarianism"),
    new(31, "is a snowboarder", "are you a snowboarder", "2008/01/27/31-snowboarding"),
    new(30, "watched Chicago Cubs at Wrigley Field", "have you watched Chicago Cubs at Wrigley Field", "2008/01/27/30-wrigley-field"),
    new(29, "partied on 80s night", "have you partied on 80's night", "2008/01/27/29-80s-night"),
    new(28, "doesn't have a TV", "do you have a TV", "2008/01/26/28-not-having-a-tv"),
    new(27, "ran a marathon", "have you ran a marathon", "2008/01/26/27-marathons"),
    new(26, "went to Manhattan", "have you been to Manhattan", "2008/01/26/26-new-york-city"),
    new(25, "likes David Sedaris", "do you like David Sedaris", "2008/01/26/25-david-sedaris"),
    new(24, "went wine tasting", "have you been wine tasting", "2008/01/25/24-wine"),
    new(23, "buys microbrew instead of Bud Light", "do you buy microbrew instead of Bud Light", "2008/01/24/23-microbreweries"),
    new(22, "has two last names", "do you have two last names", "2008/01/24/22-having-two-last-names"),
    new(21, "went to a writers workshop", "have you been to a writer's workshop", "2008/01/23/21-writers-workshops"),
    new(20, "learned about someone else's culture", "have you learned about someone else's culture", "2008/01/23/20-being-an-expert-on-your-culture"),
    new(19, "travelled to Europe", "have you travelled to Europe", "2008/01/23/19-travelling"),
    new(18, "raised awareness", "do you try to raise awareness", "2008/01/23/18-awareness"),
    new(17, "hates their parents", "do you hate your parents", "2008/01/22/16-hating-your-parents"),
    new(16, "likes a gifted child", "do you like a gifted child", "2008/01/22/17-gifted-children"),
    new(15, "did yoga", "have you done yoga", "2008/01/22/15-yoga"),
    new(14, "has a black friend", "do you have a black friend", "2008/01/21/14-having-black-friends"),
    new(13, "drinks tea", "do you drink tea", "2008/01/21/13-tea"),
    new(12, "worked for a non-profit", "have you worked for a non-profit", "2008/01/21/12-non-profit-organizations"),
    new(11, "likes asian girls", "do you like asian girls", "2008/01/20/11-asian-girls"),
    new(10, "watched a Wes Anderson movie", "have you watched a Wes Anderson movie", "2008/01/20/11-wes-anderson-movies"),
    new(9, "made someone feel bad about not going outside", "have you made someone feel bad about not going outside", "2008/01/20/9-making-you-feel-bad-about-not-going-outside"),
    new(8, "voted for Barack Obama", "did you vote for Barack Obama", "2008/01/19/8-barack-obama"),
    new(7, "celebrated diversity", "haved you celebrated diversity", "2008/01/19/7-diversity"),
    new(6, "eats organic food", "do you eat organic food", "2008/01/19/6-organic-food"),
    new(5, "went to a farmer's market", "have you been to a farmer's market", "2008/01/18/5-farmers-markets"),
    new(4, "likes giving assists more than scoring", "do you like giving assists more than scoring" "2008/01/18/4-assists"),
    new(3, "went to a film festival", "have you been to a film festival", "2008/01/18/3-film-festivals"),
    new(2, "joined a religion their parents don't belong to", "have you joined a religion your parents don't belong to", "2008/01/18/2-religions-that-{possessive}-parents-dont-belong-to"),
    new(1, "drinks coffee", "do you drink coffee", "2008/01/18/1-coffee")
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

  def first_person_title
    value = title.dup
    
    value.gsub!('has', 'have')
    value.gsub!('their', 'my')
    value.gsub!('is', 'am')
    value.gsub!(/^([a-z]+)s/, '\1')
    value
  end

  def accomplishments
    Accomplishment.where :post_number => number
  end
end