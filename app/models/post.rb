class Post < Struct.new(:number, :title, :question, :url)
  ARTICLES = [
    new(132, "picked their own fruit", "Have you picked your own fruit", "2010/03/14/132-picking-their-own-fruit"),
    new(131, "likes Conan O'Brien", "Do you like Conan O'Brien", "2010/01/13/130-conan-obrien"),
    new(130, "wears Ray-Ban Wayfarers", "Do you wear Ray-Bans", "2009/12/22/130-ray-ban-wayfarers"),
    new(129, "likes Banksy", "Do you like Banksy", "2009/10/04/129-banksy"),
    new(128, "went camping", "Have you been camping", "2009/08/14/128-camping"),
    new(127, "read \"Where The Wild Things Are\"", "Have you read \"Where The Wild Things Are\"", "2009/07/13/127-where-the-wild-things-are"),
    new(126, "rode on a Vespa scooter", "Have you ridden a Vespa scooter", "2009/06/02/126-vespa-scooters"),
    new(125, "listens to Bob Marley", "Do you listen to Bob Marley", "2009/04/22/125-bob-marley"),
    new(124, "hates someone who wears Ed Hardy", "Do you hate someone who wears Ed Hardy", "124-hating-people-who-wear-ed-hardy"),
    new(123, "watched a season of Mad Men", "Have you watched a season of Mad Men", "123-mad-men"),
    new(122, "owns a Moleskine notebook", "Do you own a Moleksine notebook", "122-moleskine-notebooks"),
    new(121, "has a funny tattoo", "Do you have a funny tattoo", "121-funny-or-ironic-tattoos"),
    new(120, "took a year off from work or school", "Have you taken a year off work or school", "120-taking-a-year-off"),
    new(119, "cooked with sea salt", "Have you cooked with sea salt", "119-sea-salt"),
    new(118, "went to an ugly sweater party", "Did you go to an ugly sweater party", "118-ugly-sweater-parties"),
    new(117, "feels bad for a political prisoner", "Do you feel bad for a political prisoner", "117-political-prisoners"),
    new(116, "celebrated old music by a black musician", "Do you celebrate old music by a black musician", "116-black-music-that-black-people-dont-listen-to-anymore"),
    new(115, "promises to learn a new language", "Do you want to learn a new language", "115-promising-to-learn-a-new-language"),
    new(114, "loves America", "Do you love america", "114-america"),
    new(113, "put a lot of effort into a Halloween costume", "Have you put a lot of effort into a Halloween costume", "113-halloween"),
    new(112, "ate a tub of hummus", "Have you eaten a tub of hummus", "112-hummus"),
    new(111, "wears a pea coat all winter", "Do you wear a pea coat all winter", "111-pea-coats"),
    new(110, "plays ultimate frisbee", "Do you play ultimate frisbee", "110-frisbee-sports"),
    new(109, "reads The Onion", "Do you read The Onion", "109-the-onion"),
    new(108, "pretended to enjoy classical music", "Have you pretended to enjoy classical music", "108-appearing-to-enjoy-classical-music"),
    new(107, "made a hip hop reference", "Have you made a hip hop reference", "107-self-aware-hip-hop-references"),
    new(106, "joined Facebook", "Are you on Facebook", "106-facebook"),
    new(105, "worked at an unpaid internship", "Have you worked at an unpaid internship", "105-unpaid-internships"),
    new(104, "likes a girl with bangs", "Do you like a girl with bangs", "104-girls-with-bangs"),
    new(103, "wore a sweater", "Have you worn a sweater", "104-sweaters"),
    new(102, "plays children games", "Do you play children games", "102-childrens-games-as-adults"),
    new(101, "became offended by a prejudice comment", "Have you become offended by a prejudice comment", "2008/05/28/101-being-offended"),
    new(100, "has bumper stickers on their car", "does your car have bumper stickers", "2008/05/21/100-bumper-stickers"),
    new(99, "corrects everyone's grammar", "Do you correct everyone's grammar", "2008/05/12/99-grammar"),
    new(98, "envies the Ivy League", "Do you envy Ivy League schools", "2008/05/06/98-the-ivy-league"),
    new(97, "wore a scarf", "Have you worn a scarf", "2008/04/30/97-scarves"),
    new(96, "owns New Balance shoes", "Do you own New Balance shoes", "2008/04/20/96-new-balance-shoes"),
    new(95, "played rugby", "Have you played rugby", "2008/04/10/95-rugby"),
    new(94, "wants free healthcare", "Do you want free healthcare", "2008/04/04/94-free-healthcare"),
    new(93, "owns pirated music", "Do you own pirated music", "2008/03/30/93-music-piracy"),
    new(92, "bought the book \"Stuff White People Like\"", "Do you own the book \"Stuff White People Like\"", "2008/03/26/92-book-deals"),
    new(91, "travelled to San Francisco", "Have you travelled to San Francisco", "2008/03/23/91-san-francisco"),
    new(90, "hosted a dinner party", "Have you hosted a dinner party", "2008/03/18/88-dinner-parties"),
    new(89, "celebrates St. Patrick's Day", "Do you celebrate St. Patrick's Day", "2008/03/16/89-saint-patricks-day"),
    new(88, "has a gay friend", "Do you have a gay friend", "2008/03/14/88-having-gay-friends"),
    new(87, "spends too much on outdoor performance clothes", "Do you spend too much on outdoor performance clothes", "2008/03/11/87-outdoor-performance-clothes"),
    new(86, "wore shorts on a cold day", "Have you worn shorts on a cold day", "2008/03/11/86-shorts"),
    new(85, "watched a season of The Wire", "Have you watched a season of The Wire", "2008/03/09/85-the-wire"),
    new(84, "owns a clever t-shirt", "Do you own a clever t-shirt", "2008/03/07/84-t-shirts"),
    new(83, "has bad memories of high school", "Do you have bad memories of high school", "2008/03/06/83-bad-memories-of-high-school"),
    new(82, "hates large corporations", "Do you hate large corporations", "2008/03/05/82-hating-corporations"),
    new(81, "went to graduate school", "Have you been to graduate school", "2008/03/04/81-graduate-school"),
    new(80, "talked about playing soccer", "Do you talk about playing soccer", "2008/03/03/80-the-idea-of-soccer"),
    new(79, "buys modern furniture", "Do you buy modern furniture", "2008/03/02/79-modern-furniture"),
    new(78, "appreciates a multilingual child", "Do you appreciate a multilingual child", "2008/02/28/78-multilingual-children"),
    new(77, "enjoyed a musical comedy", "Have you enjoyed a musical comedy", "2008/02/28/77-musical-comedy"),
    new(76, "buys bottled water", "Do you buy bottled water", "2008/02/26/76-bottles-of-water"),
    new(75, "threatened to move to Canada", "Have you threatened to move to Canada", "2008/02/24/75-threatening-to-move-to-canada"),
    new(74, "went to an Oscar party", "Have you been to an Oscar party", "2008/02/24/74-oscar-parties"),
    new(73, "helped gentrify a neighborhood", "Have you helped gentrify a neighborhood", "2008/02/22/73-gentrification"),
    new(72, "studied abroad", "Have you studied abroad", "2008/02/22/72-study-abroad"),
    new(71, "was the only white person around", "Have you ever been the only white person around", "2008/02/20/71-being-the-only-white-person-around"),
    new(70, "had a difficult breakup", "Have you been in a difficult breakup", "2008/02/18/70-difficult-breakups"),
    new(69, "listens to Mos Def", "Do you listen to Mos Def", "2008/02/17/69-mos-def"),
    new(68, "watched a Michel Gondry movie", "Have you watched a Michel Gondry movie", "2008/02/17/68-michel-gondry"),
    new(67, "stands still at concerts", "Do you stand still at concerts", "2008/02/17/68-standing-still-at-concerts"),
    new(66, "got a divorce", "Have you gotten a divorce", "2008/02/15/68-divorce"),
    new(65, "plays on a co-ed team", "Do you play on a co-ed team", "2008/02/14/67-co-ed-sports"),
    new(64, "recycles everything", "Do you recycle everything", """2008/02/14/66-recycling"),
    new(63, "bought an overpriced sandwich", "Did you ever buy an overpriced sandwich", "2008/02/11/63-expensive-sandwiches"),
    new(62, "knows what's best for poor people", "Do you know what's best for poor people", "2008/02/10/62-knowing-whats-best-for-poor-people"),
    new(61, "rides a bicycle", "Do you ride a bicycle", "2008/02/10/61-bicycles"),
    new(60, "commutes in a Toyota Prius", "Do you commute in a Toyota Prius", "2008/02/07/60-toyota-prius"),
    new(59, "tried naturopathy", "Have you tried naturopathy", "2008/02/07/59-natural-medicine"),
    new(58, "researched Japan", "Have you researched Japan", "2008/02/07/58-japan"),
    new(57, "watched Juno", "Have you watched Juno", "2008/02/06/57-juno"),
    new(56, "is friends with a lawyer", "Are you friends with a lawyer", "2008/02/06/56-lawyers"),
    new(55, "gave an apology", "Have you recently given an apology", "2008/02/05/55-apologies"),
    new(54, "bought a kitchen gadget and never used it", "Have you bought a kitched gadget and never used it", "2008/02/05/54-kitchen-gadgets"),
    new(53, "walked a dog", "Have you walked a dog recently", "2008/02/04/53-dogs"),
    new(52, "laughed at a Sarah Silverman joke", "Have you laughed at a Sarah Silverman joke", "2008/02/04/52-sarah-silverman"),
    new(51, "lived by the water", "Have you lived by the water", "2008/02/04/51-living-by-the-water"),
    new(50, "did something ironic", "Have you done something ironic recently", "2008/02/03/50-irony"),
    new(49, "buys vintage clothing", "Do you buy vintage clothing", "2008/02/03/49-vintage"),
    new(48, "shopped at Whole Foods", "Have you shopped at Whole Foods", "2008/02/03/48-whole-foods-and-grocery-co-ops"),
    new(47, "has an art degree", "Do you have an art degree", "2008/02/01/47-arts-degrees"),
    new(46, "read the Sunday New York Times", "Have you read the Sunday New York Times", "2008/01/31/45-the-sunday-new-york-times"),
    new(45, "ate at an Asian Fusion restaurant", "Have you eaten at an Asian Fusion restaurant", "2008/01/31/45-asian-fusion-food"),
    new(44, "listened to public radio", "Have you listened to public radio", "2008/01/31/44-public-radio"),
    new(43, "enjoyed a play", "Have you enjoyed a play", "2008/01/30/43-plays"),
    new(42, "ate sushi", "Have you eaten sushi", "2008/01/30/42-sushi"),
    new(41, "went to an indie rock concert", "Have you been to an indie concert", "2008/01/30/40-indie-music"),
    new(40, "owns multiple Apple products", "Do you own multiple Apple products", "2008/01/30/39-apple-products"),
    new(39, "is subscribed to Netflix", "Are you subscribed to Netflix", "2008/01/29/38-netflix"),
    new(38, "watched a season of Arrested Development", "Have you watched a season of Arrested Development", "2008/01/29/38-arrested-development"),
    new(37, "remodeled a house", "Have you remodeled a house", "2008/01/29/37-renovations"),
    new(36, "has a favorite breakfast place", "Do you have a favorite breakfast place", "2008/01/28/36-breakfast-places"),
    new(35, "watched The Daily Show every day of the week", "Have you watched The Daily Show every day of the week", "2008/01/28/35-the-daily-showcolbert-report"),
    new(34, "appreciated architecture", "Do you appreciate architecture", "2008/01/28/34-architecture"),
    new(33, "smoked marijuana", "Have you smoked marijuana", "2008/01/27/33-marijuana"),
    new(32, "tried being a vegetarian", "Have you tried being a vegetarian", "2008/01/27/32-veganvegetarianism"),
    new(31, "is a snowboarder", "Are you a snowboarder", "2008/01/27/31-snowboarding"),
    new(30, "watched Chicago Cubs at Wrigley Field", "Have you watched Chicago Cubs at Wrigley Field", "2008/01/27/30-wrigley-field"),
    new(29, "partied on 80s night", "Have you partied on 80's night", "2008/01/27/29-80s-night"),
    new(28, "bragged about not owning a TV", "Have you bragged about not owning a TV", "2008/01/26/28-not-having-a-tv"),
    new(27, "ran a marathon", "Have you ran a marathon", "2008/01/26/27-marathons"),
    new(26, "went to Manhattan", "Have you been to Manhattan", "2008/01/26/26-new-york-city"),
    new(25, "likes David Sedaris", "Do you like David Sedaris", "2008/01/26/25-david-sedaris"),
    new(24, "went wine tasting", "Have you been wine tasting", "2008/01/25/24-wine"),
    new(23, "buys microbrew instead of Bud Light", "Do you buy microbrew instead of Bud Light", "2008/01/24/23-microbreweries"),
    new(22, "has two last names", "Do you have two last names", "2008/01/24/22-having-two-last-names"),
    new(21, "went to a writers workshop", "Have you been to a writer's workshop", "2008/01/23/21-writers-workshops"),
    new(20, "learned about someone else's culture", "Have you learned about someone else's culture", "2008/01/23/20-being-an-expert-on-your-culture"),
    new(19, "travelled to Europe", "Have you travelled to Europe", "2008/01/23/19-travelling"),
    new(18, "raised awareness", "Do you try to raise awareness", "2008/01/23/18-awareness"),
    new(17, "hates their parents", "Do you hate your parents", "2008/01/22/16-hating-your-parents"),
    new(16, "likes a gifted child", "Do you like a gifted child", "2008/01/22/17-gifted-children"),
    new(15, "did yoga", "Have you done yoga", "2008/01/22/15-yoga"),
    new(14, "has a black friend", "Do you have a black friend", "2008/01/21/14-having-black-friends"),
    new(13, "drinks tea", "Do you drink tea", "2008/01/21/13-tea"),
    new(12, "worked for a non-profit", "Have you worked for a non-profit", "2008/01/21/12-non-profit-organizations"),
    new(11, "likes asian girls", "Do you like asian girls", "2008/01/20/11-asian-girls"),
    new(10, "watched a Wes Anderson movie", "Have you watched a Wes Anderson movie", "2008/01/20/11-wes-anderson-movies"),
    new(9, "made someone feel bad about not going outside", "Have you made someone feel bad about not going outside", "2008/01/20/9-making-you-feel-bad-about-not-going-outside"),
    new(8, "voted for Barack Obama", "Did you vote for Barack Obama", "2008/01/19/8-barack-obama"),
    new(7, "celebrated diversity", "Have you celebrated diversity", "2008/01/19/7-diversity"),
    new(6, "eats organic food", "Do you eat organic food", "2008/01/19/6-organic-food"),
    new(5, "went to a farmer's market", "Have you been to a farmer's market", "2008/01/18/5-farmers-markets"),
    new(4, "likes giving assists more than scoring", "Do you like giving assists more than scoring", "2008/01/18/4-assists"),
    new(3, "went to a film festival", "Have you been to a film festival", "2008/01/18/3-film-festivals"),
    new(2, "joined a religion their parents don't belong to", "Have you joined a religion your parents don't belong to", "2008/01/18/2-religions-that-their-parents-dont-belong-to"),
    new(1, "drinks coffee", "Do you drink coffee", "2008/01/18/1-coffee")
  ]

  class << self
    def find(number)
      articles_by_number[number.to_i]
    end
    
    def all
      ARTICLES
    end

    def count
      all.size
    end

    def facebook
      @facebook ||= find(106)
    end

    private
      def articles_by_number
        @@articles_by_number ||= ARTICLES.index_by(&:number)
      end
  end

  extend ActiveModel::Naming
  extend ActiveSupport::Memoizable
  
  def to_param
    number.to_s
  end

  include Comparable
  def <=>(post)
    post.number <=> number
  end
  
  def pluralized!(value)
    value.gsub!('has', 'have')
    value.gsub!(/^([a-z]+)ies /, '\1y ')
    value.gsub!(/^([a-z]+)s /) do |m|
      if $1 == 'wa'
        'was '
      else
        $1 + ' '
      end
    end
  end

  def first_person
    value = title.dup
    value.gsub!('is ', 'am ')
    value.gsub!('their', 'my')
    pluralized!(value)
    value
  end
  memoize :first_person

  def second_person
    value = title.dup
    value.gsub!('is ', 'are ')
    value.gsub!('was ', 'were ')
    value.gsub!('their', 'your')
    pluralized!(value)
    value
  end
  memoize :second_person

  def third_person_plural
    value = title.dup
    value.gsub!('is ', 'are ')
    value.gsub!('was ', 'were ')
    pluralized!(value)
    value
  end
  memoize :third_person_plural

  def accomplishments
    Accomplishment.where :post_number => number
  end
end