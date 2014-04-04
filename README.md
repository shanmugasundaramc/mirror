rubyapp
=======
Its an learning app/

Started with installation on win 7
Successfully understood rails structure
Added a stylesheet to my layout


Need to Do

Style sheet not in the exact format
Need to check on Routing
Deploy this app on HEROKU

Check the working

11.54 
Rails Database Migrations
Active Record Query Interface

guides.rubyonrails.org


Passenger configuration 
I have made apache+passenger
As per installation i have installed passanger through gem mode
While installtion i have made sure all the pre-requisites are met and then installed apache 
I made sure only one instance of the apache is installed.

Now,

I have made changes to apache2.conf adding some lines which were shown at the end of the installation of passenger then
I have added the Load Directory and in the apache2.conf
Once this has been done i have restarted through apache2 restart command

One main pre-requisite remove the index.html from the public folder of the rails application and also assigned a new route variable through routes file adding a line called :root => "controller#index"

First things first,
I have moved the rubyapp to the var/www/ directory of the apache and made sure that apache is able to configure this file and walla its done
My persmissions for the project directory was chmod 777

So far so good apache was running





 
