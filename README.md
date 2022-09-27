# Advanced ActiveRecord Querying / Advanced Activerecord Querying Belongs_to Associations

Hey there! We're [thoughtbot](https://thoughtbot.com), a design and
development consultancy that brings your digital product ideas to life.
We also love to share what we learn.

This coding exercise comes from [Upcase](https://thoughtbot.com/upcase),
the online learning platform we run. It's part of the
[Advanced ActiveRecord Querying](https://thoughtbot.com/upcase/advanced-activerecord-querying) course and is just one small sample of all
the great material available on Upcase, so be sure to visit and check out the rest.

## Exercise Intro

In this exercise, you'll be using ActiveRecord's `join` and `merge` methods to query your `belongs_to` associations in an object-oriented, composable way.

## Instructions

To start, you'll want to clone and run the setup script for the repo

    git clone git@github.com:thoughtbot-upcase-exercises/advanced-activerecord-querying-belongs_to-associations.git
    cd advanced-activerecord-querying-belongs_to-associations
    bin/setup

After cloning and running `bin/setup`:

* Take a look in `db/schema.rb` to get a sense of the database schema you'll be querying.
* Take a look at the classes in `app/models` to get familiar with the models and associations you'll be working with.
* Edit `spec/models/location_spec.rb` and remove the `pending` line from the spec.
* Edit `app/models/location.rb` and implement `in_region` to get the spec passing.
* Edit `spec/models/person_spec.rb` and repeat the above process for each pending spec.

You can run `rake` to re-run the tests at any time.

Once all the tests are passing (and there are no pending specs), you're all set!

## Tips and Tricks

Watch the [trail video](https://upcase.com/videos/advanced-querying-belongs-to) on querying `belongs_to` associations and check out the documentation for [`joins`](http://api.rubyonrails.org/classes/ActiveRecord/QueryMethods.html#method-i-joins) and [`merge`](http://api.rubyonrails.org/classes/ActiveRecord/SpawnMethods.html#method-i-merge).

## Featured Solution

Check out the [featured solution branch](https://github.com/thoughtbot-upcase-exercises/advanced-activerecord-querying-belongs_to-associations/compare/featured-solution#toc) to
see the approach we recommend for this exercise.

## Forum Discussion

If you find yourself stuck, be sure to check out the associated
[Upcase Forum discussion](https://forum.upcase.com/t/advanced-activerecord-querying-belongs-to-associations/5784)
for this exercise to see what other folks have said.

## Next Steps

When you've finished the exercise, head on back to the
[Advanced ActiveRecord Querying](https://thoughtbot.com/upcase/advanced-activerecord-querying) course to find the next exercise,
or explore any of the other great content on
[Upcase](https://thoughtbot.com/upcase).

## License

advanced-activerecord-querying-belongs_to-associations is Copyright © 2015-2018 thoughtbot, inc. It is free software,
and may be redistributed under the terms specified in the
[LICENSE](/LICENSE.md) file.

## Credits

![thoughtbot](https://thoughtbot.com/thoughtbot-logo-for-readmes.svg)

This exercise is maintained and funded by
[thoughtbot, inc](http://thoughtbot.com/community).

The names and logos for Upcase and thoughtbot are registered trademarks of
thoughtbot, inc.
