# fundatest
Test assignment for Funda

# Make it work
First, run `yarn`

Then, to run the tests, run `yarn test`

# Feedback
There is a lack of clean identifiers for some of the elements, leading to _ugly_ selectors, based on their div position. This would not be a maintanable solution in the long run, but the easy fix for that is to add id's to the elements. I tried to get screenshot testing working as well, but I did not get it to work flawlessly. It can be obeserved in the screenshot branch.

# Trying it if you are not Funda
Funda has a firewall, detecting automatic access. Maybe one or two test suites will succeed, but the rest will error out on Google's CAPTCHA mechanisms. So, if you are not in the Funda network, or whitelisted, this piece of software will fail.
