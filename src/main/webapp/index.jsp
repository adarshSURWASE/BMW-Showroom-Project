<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String userName = (String) session.getAttribute("userName");
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />
    <link rel="stylesheet" href="styles.css" />
    <title>BMW CAR SHOWROOM MANAGEMENT SYSTEM</title>
  </head>
  <body>
  
    <header>
      <nav>
        <div class="nav__header">
          <div class="nav__logo">
            <a href="#" class="logo">
              
              <img src="assets/logo-white.png" alt="logo" class="logo-dark" />
              
            </a>
          </div>
          <div class="nav__menu__btn" id="menu-btn">
            <i class="ri-menu-line"></i>
          </div>
        </div>
        <ul class="nav__links" id="nav-links">
        
        
  <li><a href="index.jsp">Home</a></li>
  <li><a href="about.html">About</a></li>

 <% if(userName == null){ %>
    <li><a href="login.html">Login</a></li>
    <li><a href="register.html" class="btn">Register</a></li>
<% } else { %>

     <li>
    <a href="cart">
        <i class="ri-shopping-cart-2-line"></i>
        <span class="cart-count">
            <%= session.getAttribute("bookingCount") != null ? session.getAttribute("bookingCount") : 0 %>
        </span>
    </a>
</li>
    
    <li><span>Welcome, <%= userName %></span></li>
    <li><a href="logout">Logout</a></li>
<% } %>
</ul>
        
      </nav>
      <div class="header__container" id="home">
        <div class="header__image">
          <img src="assets/header.png" alt="header" />
        </div>
        <div class="header__content">
          <h2>bmw showroom</h2>
          <h1>Experience Sheer Driving Pleasure: Visit Our BMW Showroom Today!</h1>
          <p class="section__description">
            BMW Booking Showroom is a modern car showroom where customers can explore and book BMW cars easily. 
            It provides detailed information about car models, prices, features, and offers. 
            Customers can test drive vehicles and get help from sales experts. 
            The showroom ensures smooth booking, finance support, and excellent customer service experience.
          </p>
        </div>
      </div>
    </header>

    <section class="deals" id="deals">
      <div class="section__container deals__container">
        <h2 class="section__header">Most Popular BMW Models</h2>
        <p class="section__description">
          Explore our top BMW models, carefully selected to deliver unmatched luxury, performance, and innovation. 
          Book your test drive today and experience the thrill of driving your dream BMW at an exceptional value! ðâ¨
        </p>
        <div class="deals__tabs">
          <button class="btn active" data-id="Tesla">Series </button>
          <button class="btn" data-id="Mitsubishi">Electric Series</button>
          <button class="btn" data-id="Mazda">SUV Series (X Series)</button>
          <button class="btn" data-id="Toyota">Performance Series (M Series)</button>
          <button class="btn" data-id="Honda">Bike</button>
        </div>
        <div id="Tesla" class="tab__content active">
          <div class="deals__card">
            <img src="assets/deals-1.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(550)</span>
            </div>
            <h4>BMW Series 4</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> 4 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> Autopilot
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 400km
              </div>

              <div>
                <span><i class="ri-car-line"></i></span> Petrol / Diesel
              </div>

            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹52,00,000</h3>
              <a href="booking.html?car=BMW Series 4">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
          <div class="deals__card">
            <img src="assets/deals-2.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(450)</span>
            </div>
            <h4>BMW Series 5</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> 5 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> Autopilot
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> Mileage: 15 km/l
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Petrol / Diesel
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹65,00,000</h3>
              <a href="booking.html?car=BMW Series 5">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
          <div class="deals__card">
            <img src="assets/deals-3.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(550)</span>
            </div>
            <h4>BMW Series 6</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> 5 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> not-Autopilot
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> Mileage: 14 km/l
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Petrol
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹73,00,000</h3>
              <a href="booking.html?car=BMW Series 6">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
        </div>
        <div id="Mitsubishi" class="tab__content">
          <div class="deals__card">
            <img src="assets/deals-4.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(350)</span>
            </div>
            <h4>BMW iX1</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> 5 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> Autopilot
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 440 km (Full Charge)
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Electric
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹66,00,000</h3>
              <a href="booking.html?car=BMW iX1">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
          <div class="deals__card">
            <img src="assets/deals-5.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(250)</span>
            </div>
            <h4>BMW iX3</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span>  5 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> Autopilot
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 460 km (Full Charge)
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Electric
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹74,00,000</h3>
              <a href="booking.html?car=BMW iX3">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
          <div class="deals__card">
            <img src="assets/deals-6.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(150)</span>
            </div>
            <h4>BMW iX</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span>  5 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> Autopilot
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 575 km (Full Charge)
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Electric
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹1,20,00,000</h3>
              <a href="booking.html?car=BMW iX">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
        </div>
        <div id="Mazda" class="tab__content">
          <div class="deals__card">
            <img src="assets/deals-7.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(480)</span>
            </div>
            <h4>BMW X6</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> 5 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> Manual/Automatic
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 13 km/l
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Diesel
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹1,04,00,000</h3>
              <a href="booking.html?car=BMW X6">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
          <div class="deals__card">
            <img src="assets/deals-8.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(720)</span>
            </div>
            <h4>BMW X7</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> 7 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> Manual/Automatic
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 12km/l
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Diesel
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹1,27,00,000</h3>
              <a href="booking.html?car=BMW X7">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
          <div class="deals__card">
            <img src="assets/deals-9.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(350)</span>
            </div>
            <h4>BMW XM</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> 5 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> Manual/Automatic
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 11km/l
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Diesel
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹2,60,00,000</h3>
              <a href="booking.html?car=BMW XM">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
        </div>
        <div id="Toyota" class="tab__content">
          <div class="deals__card">
            <img src="assets/deals-10.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(680)</span>
            </div>
            <h4>BMW M4</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> 4 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> Manual
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 10km/l
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Petrol (Twin Turbo Performance)
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹1,50,00,000</h3>
              <a href="booking.html?car=BMW M4">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
          <div class="deals__card">
            <img src="assets/deals-11.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(820)</span>
            </div>
            <h4>BMW M5</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> 5 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> Manual/Automatic
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 9km/l
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Petrol (V8 Twin Turbo)
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹1,85,00,000</h3>
              <a href="booking.html?car=BMW M5">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
          <div class="deals__card">
            <img src="assets/deals-12.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(540)</span>
            </div>
            <h4>BMW M8</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> 4 Seater
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> Manual
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 8km/l
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Petrol (V8 Twin Turbo Performance)
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹2,20,00,000</h3>
              <a href="booking.html?car=BMW M8">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
        </div>
        <div id="Honda" class="tab__content">
          <div class="deals__card">
            <img src="assets/deals-13.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(980)</span>
            </div>
            <h4>BMW S 1000 RR</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> Superbike (Sport)
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> 999cc Engine
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 299km/H
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Petrol
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹20,75,000</h3>
              <a href="booking.html?car=BMW S 1000 RR">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
          <div class="deals__card">
            <img src="assets/deals-14.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(850)</span>
            </div>
            <h4>BMW R 1250 GS</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> Adventure Touring Bike
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> 1254cc Engine
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 200+ km/h
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Petrol (136 hp)
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹20,55,000</h3>
              <a href="booking.html?car=BMW R 1250 GS">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
          <div class="deals__card">
            <img src="assets/deals-15.png" alt="deals" />
            <div class="deals__rating">
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-fill"></i></span>
              <span><i class="ri-star-line"></i></span>
              <span>(990)</span>
            </div>
            <h4>BMW G 310 RR</h4>
            <div class="deals__card__grid">
              <div>
                <span><i class="ri-group-line"></i></span> Sport Bike
              </div>
              <div>
                <span><i class="ri-steering-2-line"></i></span> 313cc Engine
              </div>
              <div>
                <span><i class="ri-speed-up-line"></i></span> 160km/h
              </div>
              <div>
                <span><i class="ri-car-line"></i></span> Petrol(34 hp)
              </div>
            </div>
            <hr />
            <div class="deals__card__footer">
              <h3>â¹80,00,000</h3>
              <a href="booking.html?car=BMW G 310 RR">
                Book Now
                <span><i class="ri-arrow-right-line"></i></span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="choose__container" id="choose">
      <div class="choose__image">
        <img src="assets/choose.jpg" alt="choose" />
      </div>
      <div class="choose__content">
        <h2 class="section__header">Why choose us</h2>
        <p class="section__description">
          Experience true luxury, innovation, and performance with our exclusive BMW collection.
          We are committed to delivering premium customer service, certified vehicles, and a world-class showroom experience.
        </p>
        <div class="choose__grid">
          <div class="choose__card">
            <span><i class="ri-customer-service-line"></i></span>
            <div>
              <h4>Latest BMW Models</h4>
              <p>ODiscover the newest BMW series featuring advanced technology, powerful performance, and iconic design</p>
            </div>
          </div>
          <div class="choose__card">
            <span><i class="ri-map-pin-line"></i></span>
            <div>
              <h4>Multiple Showroom Locations</h4>
              <p>
                Our authorized BMW showrooms are conveniently located to serve you better.
              </p>
            </div>
          </div>
          <div class="choose__card">
            <span><i class="ri-wallet-line"></i></span>
            <div>
              <h4>Best Price Guarantee</h4>
              <p>We offer competitive pricing along with attractive finance and EMI options.</p>
            </div>
          </div>
          <div class="choose__card">
            <span><i class="ri-user-star-line"></i></span>
            <div>
              <h4>Expert Sales Advisors/h4>
              <p>Our experienced BMW specialists guide you in selecting the perfect luxury car for your needs</p>
            </div>
          </div>
          <div class="choose__card">
            <span><i class="ri-verified-badge-line"></i></span>
            <div>
              <h4>Certified BMW Vehicles</h4>
              <p>All our vehicles are thoroughly inspected and officially certified to ensure top quality and reliability.</p>
            </div>
          </div>
          <div class="choose__card">
            <span><i class="ri-calendar-close-line"></i></span>
            <div>
              <h4>Premium Service Support</h4>
              <p>Enjoy exceptional after-sales service, genuine BMW parts, and professional maintenance support.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="subscribe__container">
      <div class="subscribe__image">
        <img src="assets/subscribe.png" alt="subscribe" />
      </div>
      <div class="subscribe__content">
        <h2 class="section__header">
          Subscribe for the latest car
        </h2>
        <p class="section__description">
          Stay connected with our BMW showroom and be the first to discover new model launches,
         exclusive offers, special events, and luxury driving experiences.
          Subscribe to receive the latest news, premium deals, and updates delivered directly to your inbox. ðâ¨
        </p>
        <form action="/">
          <input type="text" placeholder="Your Email" />
          <button class="btn">Subscribe</button>
        </form>
      </div>
    </section>

    <section class="section__container client__container" id="client">
      <h2 class="section__header">What people say about us?</h2>
      <p class="section__description">
       Our customers appreciate the luxury experience, professional service, and exceptional quality we deliver.
        From smooth test drives to transparent pricing and reliable after-sales support, we are proud to earn their trust and satisfaction.
        Their positive feedback motivates us to maintain excellence in every BMW we deliver. ðâ¨
      </p>
      <!-- Slider main container -->
      <div class="swiper">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
          <!-- Slides -->
          <div class="swiper-slide">
            <div class="client__card">
              <div class="client__details">
                <img src="assets/client-1.jpg" alt="client" />
                <div>
                  <h4>Priya Mehta</h4>
                  <div class="client__rating">
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-line"></i></span>
                  </div>
                </div>
              </div>
              <p>
               I had an outstanding experience purchasing my BMW from this showroom. 
               The staff was professional, the process was smooth, and the car delivery was perfectly handled. 
               Truly a premium experience!
              </p>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="client__card">
              <div class="client__details">
                <img src="assets/client-2.jpg" alt="client" />
                <div>
                  <h4>Ajay korde</h4>
                  <div class="client__rating">
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-line"></i></span>
                  </div>
                </div>
              </div>
              <p>
                Customer service was excellent! The sales team answered all my questions and helped me choose the perfect BMW model.
                 Im extremely satisfied with my purchase.
              </p>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="client__card">
              <div class="client__details">
                <img src="assets/client-3.jpg" alt="client" />
                <div>
                  <h4>komal satav</h4>
                  <div class="client__rating">
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-fill"></i></span>
                    <span><i class="ri-star-line"></i></span>
                  </div>
                </div>
              </div>
              <p>
                Great pricing, genuine guidance, and luxury service. The entire buying process was transparent and stress-free.
                 Highly recommend this BMW showroom to anyone looking for quality and trust.
              </p>
            </div>
          </div>
          
         
        </div>
      </div>
    </section>

    <footer class="footer">
      <div class="section__container footer__container">
        <div class="footer__col">
          <div class="footer__logo">
            <a href="#" class="logo">
              <img src="assets/logo-white.png" alt="logo" />
              
            </a>
          </div>
          <p>
            We're here to provide you with the best vehicles and a seamless
            rental experience. Stay connected for updates, special offers, and
            more. Drive with confidence!
          </p>
          <ul class="footer__socials">
            <li>
              <a href=""><i class="ri-facebook-fill"></i></a>
            </li>
            <li>
              <a href=""><i class="ri-twitter-fill"></i></a>
            </li>
            <li>
              <a href=""><i class="ri-linkedin-fill"></i></a>
            </li>
            <li>
              <a href=""><i class="ri-instagram-line"></i></a>
            </li>
            <li>
              <a href=""><i class="ri-youtube-fill"></i></a>
            </li>
          </ul>
        </div>
        <div class="footer__col">
          <h4>Our Services</h4>
          <ul class="footer__links">
            <li><a href="index.html">Home</a></li>
            <li><a href="about.html">About</a></li>
          </ul>
        </div>
        <div class="footer__col">
          <h4>Vehicles</h4>
          <ul class="footer__links">
            <li><a href="#">Series 4-6</a></li>
            <li><a href="#">Electric Series</a></li>
            <li><a href="#">SUV Series(X Series)</a></li>
            <li><a href="#"> Performance Series</a></li>
            <li><a href="#">Bike</a></li>
          </ul>
        </div>
        <div class="footer__col">
          <h4>Contact</h4>
          <ul class="footer__links">
            <li>
              <a href="#">
                <span><i class="ri-phone-fill"></i></span> +91 98502 97293
              </a>
            </li>
            <li>
              <a href="#">
                <span><i class="ri-map-pin-fill"></i></span> PUNE, India
              </a>
            </li>
            <li>
              <a href="#">
                <span><i class="ri-mail-fill"></i></span> surwaseadarsh16@gmail.com
              </a>
            </li>
          </ul>
        </div>
      </div>
      <div class="footer__bar">
        Copyright Â© 2024 Web Design Mastery. All rights reserved.
      </div>
    </footer>

    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="main.js"></script>
  </body>
</html>
