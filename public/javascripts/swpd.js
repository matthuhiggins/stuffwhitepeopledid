window.SWPD = {};

window.SWPD.getFriends = (function() {
  function friendQueryUrl(url, fbFriends) {
    var fb_uids = $.map(fbFriends, function(fbFriend) {
      return fbFriend.id;
    });
    return (url + '?fb_uids=' + fb_uids.join(','));
  }

  return function(url) {
    FB.api('/me/friends', function(response) {
      var fbFriends = response['data'];
      $.getScript(friendQueryUrl(url, fbFriends));
    });
  };
})();

SWPD.publish = function(progress) {
  FB.ui(
    {
      method: 'stream.publish',
      message: "I've made white progress",
      attachment: {
        name: 'Stuff White People Did',
        description: (
          'I am now ' + progress + ' white'
        ),
        href: 'http://stuffwhitepeopledid.com'
      },
      action_links: [
        { text: 'Code', href: 'http://github.com/facebook/connect-js' }
      ],
      user_prompt_message: 'Share your thoughts about Connect'
    },
    function(response) {
      if (response && response.post_id) {
        alert('Post was published.');
      } else {
        alert('Post was not published.');
      }
    }
  );
}