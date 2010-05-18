class Post < Struct.new(:number, :title, :url)
  ARTICLES = [
    new(132, "Picking their own Fruit", "2010/03/14/132-picking-their-own-fruit"),
    new(131, "Conan O’Brien", "2010/01/13/130-conan-obrien"),
    new(130, "Ray-Ban Wayfarers", "2009/12/22/130-ray-ban-wayfarers"),
    new(129, "Banksy", "2009/10/04/129-banksy"),
    new(128, "Camping", "2009/08/14/128-camping"),
    new(127, "Where The Wild Things Area", "2009/07/13/127-where-the-wild-things-are"),
    new(126, "Vespa Scooters", "2009/06/02/126-vespa-scooters"),
    new(125, "Bob Marley",  "2009/04/22/125-bob-marley"),
    new(124, "Hating People Who Wear Ed Hardy", "124-hating-people-who-wear-ed-hardy"),
    new(123, "Mad Men", "123-mad-men"),
    new(122, "Moleskine Notebooks", "122-moleskine-notebooks"),
    new(121, "Funny or Ironic Tattoos", "121-funny-or-ironic-tattoos"),
    new(120, "Taking a Year Off", "120-taking-a-year-off"),
    new(119, "Sea Salt", "119-sea-salt"),
    new(118, "Ugly Sweater Parties", "118-ugly-sweater-parties"),
    new(117, "Political Prisoners", "117-political-prisoners"),
    new(116, "Black Music that Black People Don't Listen to Anymore", "116-black-music-that-black-people-dont-listen-to-anymore"),
    new(115, "Promising to Learn a New Language", "115-promising-to-learn-a-new-language"),
    new(114, "America", "114-america"),
    new(113, "Halloween", "113-halloween"),
    new(112, "Hummus", "112-hummus"),
    new(111, "Pea Coats", "111-pea-coats"),
    new(110, "Frisbee Sports", "110-frisbee-sports"),
    new(109, "The Onion", "109-the-onion"),
    new(108, "Appearing to Enjoy Classical Music", "108-appearing-to-enjoy-classical-music"),
    new(107, "Self Aware Hip Hop References", "107-self-aware-hip-hop-references"),
    new(106, "Facebook", "106-facebook"),
    new(105, "Unpaid Internships", "105-unpaid-internships"),
    new(104, "Girls with Bangs", "104-girls-with-bangs"),
    new(103, "Sweaters", "104-sweaters"),
    new(102, "Children's Games as Adults", "102-childrens-games-as-adults"),
    new(101, "Being Offended", "2008/05/28/101-being-offended"),
    new(100, "Bumper Stickers", "2008/05/21/100-bumper-stickers"),
    new(99, "Grammar", "2008/05/12/99-grammar"),
    new(98, "The Ivy League", "2008/05/06/98-the-ivy-league"),
    new(97, "Scarves", "2008/04/30/97-scarves"),
    new(96, "New Balance Shoes", "2008/04/20/96-new-balance-shoes"),
    new(95, "Rugby", "2008/04/10/95-rugby"),
    new(94, "Free Healthcare", "2008/04/04/94-free-healthcare"),
    new(93, "Music Piracy", "2008/03/30/93-music-piracy"),
    new(92, "Book Deals", "2008/03/26/92-book-deals"),
    new(91, "San Francisco", "2008/03/23/91-san-francisco"),
    new(90, "Dinner Parties", "2008/03/18/88-dinner-parties"),
    new(89, "St. Patrick's Day", "2008/03/16/89-saint-patricks-day"),
    new(88, "Having Gay Friends", "2008/03/14/88-having-gay-friends"),
    new(87, "Outdoor Performance Clothes", "2008/03/11/87-outdoor-performance-clothes"),
    new(86, "Shorts", "2008/03/11/86-shorts"),
    new(85, "The Wire", "2008/03/09/85-the-wire"),
    new(84, "T-Shirts", "2008/03/07/84-t-shirts"),
    new(83, "Bad Memories of High School", "2008/03/06/83-bad-memories-of-high-school"),
    new(82, "Hating Corporations", "2008/03/05/82-hating-corporations"),
    new(81, "Graduate School", "2008/03/04/81-graduate-school"),
    new(80, "The Idea of Soccer", "2008/03/03/80-the-idea-of-soccer"),
    new(79, "Modern Furniture", "2008/03/02/79-modern-furniture"),
    new(78, "Multilingual Children", "2008/02/28/78-multilingual-children"),
    new(77, "Musical Comedy", "2008/02/28/77-musical-comedy"),
    new(76, "Bottles of Water", "2008/02/26/76-bottles-of-water"),
    new(75, "Threatening to Move to Canada", "2008/02/24/75-threatening-to-move-to-canada"),
    new(74, "Oscar Parties", "2008/02/24/74-oscar-parties"),
    new(73, "Gentrification", "2008/02/22/73-gentrification"),
    new(72, "Study Abroad", "2008/02/22/72-study-abroad"),
    new(71, "Being the only white person around", "2008/02/20/71-being-the-only-white-person-around"),
    new(70, "Difficult Breakups", "2008/02/18/70-difficult-breakups"),
    new(69, "Mos Def", "2008/02/17/69-mos-def"),
    new(68, "Michel Gondry", "2008/02/17/68-michel-gondry"),
    new(67, "Standing Still at Concerts", "2008/02/17/68-standing-still-at-concerts"),
    new(66, "Divorce", "2008/02/15/68-divorce"),
    new(65, "Co-Ed Sports", "2008/02/14/67-co-ed-sports"),
    new(64, "Recycling", "2008/02/14/66-recycling"),
    new(63, "Expensive Sandwiches", "2008/02/11/63-expensive-sandwiches"),
    new(62, "Knowing What's Best for Poor People", "2008/02/10/62-knowing-whats-best-for-poor-people"),
    new(61, "Bicycles", "2008/02/10/61-bicycles"),
    new(60, "Toyota Prius", "2008/02/07/60-toyota-prius"),
    new(59, "Natural Medicine", "2008/02/07/59-natural-medicine"),
    new(58, "Japan", "2008/02/07/58-japan"),
    new(57, "Juno" "2008/02/06/57-juno"),
    new(56, "Lawyers", "2008/02/06/56-lawyers"),
    new(55, "Apologies", "2008/02/05/55-apologies"),
    new(54, "Kitchen Gadgets", "2008/02/05/54-kitchen-gadgets"),
    new(53, "Dogs", "2008/02/04/53-dogs"),
    new(52, "Sarah Silverman", "2008/02/04/52-sarah-silverman"),
    new(51, "Living by the Water", "2008/02/04/51-living-by-the-water"),
    new(50, "Irony", "2008/02/03/50-irony"),
    new(49, "Vintage", "2008/02/03/49-vintage"),
    new(48, "Whole Foods and Grocery Co-ops", "2008/02/03/48-whole-foods-and-grocery-co-ops"),
    new(47, "Arts Degrees", "2008/02/01/47-arts-degrees"),
    new(46, "The Sunday New York Times", "2008/01/31/45-the-sunday-new-york-times"),
    new(45, "Asian Fusion Food", "2008/01/31/45-asian-fusion-food"),
    new(44, "Public Radio", "2008/01/31/44-public-radio"),
    new(43, "Plays", "2008/01/30/43-plays"),
    new(42, "Sushi", "2008/01/30/42-sushi"),
    new(41, "Indie Music", "2008/01/30/40-indie-music"),
    new(40, "Apple Products", "2008/01/30/39-apple-products"),
    new(39, "Netflix", "2008/01/29/38-netflix"),
    new(38, "Arrested Development", "2008/01/29/38-arrested-development"),
    new(37, "Renovations", "2008/01/29/37-renovations"),
    new(36, "Breakfast Places", "2008/01/28/36-breakfast-places"),
    new(35, "The Daily Show/Colbert Report", "2008/01/28/35-the-daily-showcolbert-report"),
    new(34, "Architecture", "2008/01/28/34-architecture"),
    new(33, "Marijuana", "2008/01/27/33-marijuana"),
    new(32, "Vegan/Vegetarianism", "2008/01/27/32-veganvegetarianism"),
    new(31, "Snowboarding", "2008/01/27/31-snowboarding"),
    new(30, "Wrigley Field", "2008/01/27/30-wrigley-field"),
    new(29, "80s Night", "2008/01/27/29-80s-night"),
    new(28, "Not having a TV", "2008/01/26/28-not-having-a-tv"),
    new(27, "Marathons", "2008/01/26/27-marathons"),
    new(26, "Manhattan (now Brooklyn too!)", "2008/01/26/26-new-york-city"),
    new(25, "David Sedaris", "2008/01/26/25-david-sedaris"),
    new(24, "Wine", "2008/01/25/24-wine"),
    new(23, "Microbreweries", "2008/01/24/23-microbreweries"),
    new(22, "Having Two Last Names", "2008/01/24/22-having-two-last-names"),
    new(21, "Writers Workshops", "2008/01/23/21-writers-workshops"),
    new(20, "Being an expert on YOUR culture", "2008/01/23/20-being-an-expert-on-your-culture"),
    new(19, "Traveling", "2008/01/23/19-travelling"),
    new(18, "Awareness", "2008/01/23/18-awareness"),
    new(17, "Hating their Parents", "2008/01/22/16-hating-your-parents"),
    new(16, "Gifted Children", "2008/01/22/17-gifted-children"),
    new(15, "Yoga", "2008/01/22/15-yoga"),
    new(14, "Having Black Friends", "2008/01/21/14-having-black-friends"),
    new(13, "Tea", "2008/01/21/13-tea"),
    new(12, "Non-Profit Organizations", "2008/01/21/12-non-profit-organizations"),
    new(11, "Asian Girls", "2008/01/20/11-asian-girls"),
    new(10, "Wes Anderson Movies", "2008/01/20/11-wes-anderson-movies"),
    new(9, "Making you feel bad about not going outside", "2008/01/20/9-making-you-feel-bad-about-not-going-outside"),
    new(8, "Barack Obama", "2008/01/19/8-barack-obama"),
    new(7, "Diversity", "2008/01/19/7-diversity"),
    new(6, "Organic Food", "2008/01/19/6-organic-food"),
    new(5, "Farmer's Markets", "2008/01/18/5-farmers-markets"),
    new(4, "Assists", "2008/01/18/4-assists"),
    new(3, "Film Festivals", "2008/01/18/3-film-festivals"),
    new(2, "Religions their parents don't belong to", "2008/01/18/2-religions-that-their-parents-dont-belong-to"),
    new(1, "Coffee", "2008/01/18/1-coffee")
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