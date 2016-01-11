# Demo for Refile processing delay when reloading

Steps:

1. Clone repo<br>`git clone https://github.com/monkbroc/refile-not-modified.git`

2. Bundle install, setup demo SQLite db<br>`bin/setup`

3. Run server<br>`rails s`

4. Open page<br>`http://localhost:3000/`

5. Notice a delay while the large images are resized (this is expected)

6. Reload the page with F5 and notice the delay again as that the images are processed.

Desired behavior would be to let the browser reuse the cached images
when reloading the page in development.

Try fix from [304-not-modified](https://github.com/refile/refile/pull/398) branch:

1. Checkout branch<br>`git checkout 304-not-modified`

2. Bundle install<br>`bundle install`

3. Run server<br>`rails s`

4. Open page<br>`http://localhost:3000/`

5. Notice no image loading delay when reloading with F5

