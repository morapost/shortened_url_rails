# README

Gems Used: 

* Ruby version - 2.4

* Rails version - 5.0.7

* Devise - 4.4

* Active Model Serializer - 0.11

<h2>Fork or download the repository<h2>

<p>Once downloaded run <code>bundle install</code><p>	

<p>Migrate the Database <code>rails db:migrate </code> </p>

<h3>Navigate to localhost:3000</h3>
<span>Signup with email</span>
<h4>There will be an alert box in the homepage, which provides instruction on how to submit AJAX request to rails server</h4>
<h5>Submit the AJAX request from browser (Chrome) Developer console </h5>
<p>If alert is not available for some reason, you could use this sample 
	<code>$.ajax({type: "POST",url: "/short_urls",data: {original_url: < Your URL in quoutes >, email: < Your Email in quotes >} });
	</code>
</p>
<p>You could see the response in Developer Console in the form of short URL for the provided URL</p>
<h5>Refresh the browser, you could see the table with short URL and other details</h5>
<h5>You could copy the short URL and paste in new tab to check if it is redirecting to original URL</h5>


