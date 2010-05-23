SWPD = {};

// [
//   {'name': 'Bob', 'id': 24, 'fb_uid': 2341, 'accomplishments_count': 12},
//   {'name': 'Jane Goodall', 'id': 25, 'fb_uid': 932141, 'accomplishments_count': 22},
//   ...
// ]
SWPD.friends = (function() {
  var cachedFriends = null;
  
  function group_friends_by_id(fb_friends) {
    var result = {};
    for(var i = 0; i < fb_friends.length; i++) {
      result[fb_friends[i].id] = fb_friends[i];
    }
    return result;
  }
  
  function merge_friends(fb_friends, whiggers) {
    var fb_friends_by_id = group_friends_by_id(fb_friends),
        fb_friend,
        whigger;

    for(var i = 0; i < whiggers.length; i++) {
      whigger = whiggers[i];
      fb_friend = fb_friends_by_id[whigger.fb_uid];
      whigger.name = fb_friend.name;
    }
    return whiggers;
  }
  
  function friend_query_url(fb_friends) {
    var fb_uids = $.map(fb_friends, function(fb_friend) {
      return fb_friend.id;
    });
    return ('/users?fb_uids=' + fb_uids.join(','));
  }
  
  return function(callback) {
    if (cachedFriends) {
      return callback(cachedFriends);
    } else {
      FB.api('/me/friends', function(response) {
        var fb_friends = response['data'];
        if (cachedFriends.length === 0) {
          cachedFriends = [];
          callback(cachedFriends);
        } else {
          $.getJSON(friend_query_url(fb_friends), function(whiggers) {
            var whiggers = merge_friends(fb_friends, whiggers);
            callback(whiggers);
          });
        }
      });
    }
  };
})();

SWPD.didIt = (function() {
  function publish()
  FB.ui(
    {
      method: 'stream.publish',
      message: 'I am now 75% white',
      attachment: {
        name: 'Stuff White People Did',
        // caption: 'The Facebook Connect JavaScript SDK',
        description: (
          'A small JavaScript library that allows you to harness ' +
          'the power of Facebook, bringing the user\'s identity, ' +
          'social graph and distribution power to your site.'
        ),
        href: 'http://stuffwhitepeopledid.com'
      },
      action_links: [
        { text: 'Code', href: 'http://github.com/facebook/connect-js' }
      ],
      // user_prompt_message: 'Share your thoughts about Connect'
    },
    function(response) {
      if (response && response.post_id) {
        alert('Post was published.');
      } else {
        alert('Post was not published.');
      }
    }
  );
})();