All rows would have created_at and updated_at values. I just got tired of typing them.

One to many relationship possibilities:
  1: traditional join table (post_id, tag_id)
  2: a tags field on post with a `<ul>` of tag ids with links to the tag rows

Should each `<td>` have a class on it of its field name?

```html
<table id="users">
  <caption>Users</caption>
  <thead>
    <tr>
      <th scope='col'>id</th>
      <th scope='col'>username</th>
      <th scope='col'>name</th>
      <th scope='col'>created_at</th>
      <th scope='col'>updated_at</th>
    </tr>
  </thead>
  <tbody>
    <tr id="users_1">
      <td>1</td>
      <td>veganstraightedge</td>
      <td>Shane Becker</td>
      <td><time datetime="2013-05-29T15:48:47+07:00">Wed May 29 15:48:47 +0700 2013</time></td>
      <td><time datetime="2013-05-29T15:48:47+07:00">Wed May 29 15:48:47 +0700 2013</time></td>
    </tr>
    <tr id="users_2">
      <td>2</td>
      <td>civthedog</td>
      <td>Civ</td>
      <td><time datetime="2013-05-29T15:50:00+07:00">Wed May 29 15:50:00 +0700 2013</time></td>
      <td><time datetime="2013-05-29T15:50:00+07:00">Wed May 29 15:50:00 +0700 2013</time></td>
    </tr>
    <tr id="users_3">
      <td>3</td>
      <td>farmhouse</td>
      <td>The Farmhouse</td>
      <td><time datetime="2013-05-29T15:55:10+07:00">Wed May 29 15:55:10 +0700 2013</time></td>
      <td><time datetime="2013-05-29T15:55:10+07:00">Wed May 29 15:55:10 +0700 2013</time></td>
    </tr>
  </tbody>
</table>

<table id="posts">
  <caption>Posts</caption>
  <thead>
    <tr>
      <th scope='col'><input value="title"   type="text"   disabled /></th>
      <th scope='col'><input value="content" type="text"   disabled /></th>
      <th scope='col'><input value="user_id" type="number" disabled /></th>
      <th scope='col'>created_at</th>
      <th scope='col'>updated_at</th>
    </tr>
  </thead>
  <tbody>
    <tr id="posts_1">
      <td>My first post!</td>
      <td>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</td>
      <td><a href="#users_1">1</a></td>
      <td><time datetime="2013-05-29T16:00:00+07:00">Wed May 29 16:00:00 +0700 2013</time></td>
      <td><time datetime="2013-05-29T16:00:00+07:00">Wed May 29 16:00:00 +0700 2013</time></td>
    </tr>
    <tr id="posts_2">
      <td>HTML DB Idea</td>
      <td>Store data in an HTML &lt;table&gt;. Then operate on it using Nokogiri on the server or jQuery in the browser.</td>
      <td><a href="#users_1">1</a></td>
      <td><time datetime="2013-05-29T16:01:00+07:00">Wed May 29 16:01:00 +0700 2013</time></td>
      <td><time datetime="2013-05-29T16:01:00+07:00">Wed May 29 16:01:00 +0700 2013</time></td>
    </tr>
    <tr id="posts_3">
      <td>I want to blog too!</td>
      <td>Boof. Boof. Boof.</td>
      <td><a href="#users_2">1</a></td>
      <td><time datetime="2013-05-29T16:03:37+07:00">Wed May 29 16:03:37 +0700 2013</time></td>
      <td><time datetime="2013-05-29T16:03:37+07:00">Wed May 29 16:03:37 +0700 2013</time></td>
    </tr>
    <tr id="posts_4">
      <td>Farmhouse Conf 5</td>
      <td>On November 2, 2013. In Hollywood, CA. Under a 100 year old avocado tree. Theme: Collapse.</td>
      <td><a href="#users_3">1</a></td>
      <td><time datetime="2013-05-29T16:05:00+07:37">Wed May 29 16:04:37 +0700 2013</time></td>
      <td><time datetime="2013-05-29T16:05:00+07:37">Wed May 29 16:04:37 +0700 2013</time></td>
    </tr>
    <tr id="posts_5">
      <td>The Farmhouse : Barn</td>
      <td>A quasi-public hackerspace in a barn. We have tools, space to work, a 3D printer, screenprinting and more. Come join us.</td>
      <td><a href="#users_3">1</a></td>
      <td><time datetime="2013-05-29T16:10:00+07:00">Wed May 29 16:10:00 +0700 2013</time></td>
      <td><time datetime="2013-05-29T16:10:00+07:00">Wed May 29 16:10:00 +0700 2013</time></td>
    </tr>
  </tbody>
</table>

<table id="tags">
  <caption>Tags</caption>
  <thead>
    <tr>
      <th scope='col'>content</th>
      <th scope='col'>created_at</th>
      <th scope='col'>updated_at</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="content">greek</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="content">lorem ipsum</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="content">html</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="content">db</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="content">dog</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="content">farmhouse</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

<table id="comments">
  <caption>Comments</caption>
  <thead>
    <tr>
      <th scope='col'>name</th>
      <th scope='col'>content</th>
      <th scope='col'>post_id</th>
      <th scope='col'>created_at</th>
      <th scope='col'>updated_at</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Bob Sackamano</td>
      <td>Cool story, bro.</td>
      <td><a href="#posts_1">1</a></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Birdie</td>
      <td>Rough! Rough!</td>
      <td><a href="#posts_3">3</a></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Anonymous</td>
      <td>I've been to all 4 so far, I can't wait to see the final one too.</td>
      <td><a href="#posts_4">4</a></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Heather Peterson</td>
      <td>I want to print some tshirts.</td>
      <td><a href="#posts_5">5</a></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
```
