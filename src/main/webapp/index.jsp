<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · Modern E‑Commerce</title>
  <!-- Google Fonts (Inter + Poppins) -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <!-- Font Awesome 6 (Free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ----- GLOBAL RESET & ROOT ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }

    :root {
      --bg: #fafcff;
      --surface: #ffffff;
      --primary: #0b1e33;
      --accent: #2b7aff;
      --accent-soft: #e6f0ff;
      --text-muted: #5b6f87;
      --border-light: #e9edf4;
      --shadow-sm: 0 8px 24px rgba(0, 20, 50, 0.04);
      --shadow-hover: 0 20px 40px rgba(0, 20, 50, 0.08);
      --radius-card: 16px;
      --radius-full: 999px;
      --transition: 0.2s ease;
      --max-width: 1280px;
    }

    html { scroll-behavior: smooth; }
    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a { color: inherit; text-decoration: none; }
    button { cursor: pointer; font-family: inherit; border: none; background: none; }
    img { display: block; max-width: 100%; height: auto; }

    .container {
      max-width: var(--max-width);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- HEADER (sticky, clean) ----- */
    .header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255,255,255,0.82);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border-bottom: 1px solid var(--border-light);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 14px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.3px;
    }
    .brand .highlight { color: var(--accent); }

    .nav-desktop {
      display: flex;
      align-items: center;
      gap: 8px;
      list-style: none;
    }
    .nav-desktop li a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--primary);
      transition: background var(--transition), color var(--transition);
    }
    .nav-desktop li a:hover,
    .nav-desktop li a:focus-visible {
      background: var(--accent-soft);
      color: var(--accent);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .search-wrapper {
      display: flex;
      align-items: center;
      background: var(--surface);
      border: 1px solid var(--border-light);
      border-radius: var(--radius-full);
      padding: 0 12px 0 18px;
      transition: box-shadow var(--transition), border var(--transition);
    }
    .search-wrapper:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(43, 122, 255, 0.12);
    }
    .search-wrapper input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 0.95rem;
      width: 200px;
      outline: none;
      color: var(--primary);
    }
    .search-wrapper input::placeholder { color: var(--text-muted); }
    .search-wrapper button {
      padding: 8px 6px;
      color: var(--text-muted);
      font-size: 1rem;
      transition: color var(--transition);
    }
    .search-wrapper button:hover { color: var(--accent); }

    .icon-btn {
      width: 44px;
      height: 44px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      border-radius: var(--radius-full);
      background: transparent;
      color: var(--primary);
      font-size: 1.2rem;
      transition: background var(--transition), color var(--transition);
    }
    .icon-btn:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }

    .cart-badge {
      position: relative;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .cart-badge .count {
      position: absolute;
      top: -6px;
      right: -6px;
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 2px 6px rgba(43, 122, 255, 0.3);
    }

    .mobile-toggle {
      display: none;
      font-size: 1.5rem;
      padding: 4px 8px;
    }

    /* mobile menu */
    .mobile-menu {
      display: none;
      padding: 12px 0 20px;
      border-top: 1px solid var(--border-light);
      background: var(--surface);
    }
    .mobile-menu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .mobile-menu ul li a {
      display: block;
      padding: 12px 16px;
      border-radius: 12px;
      font-weight: 500;
      transition: background var(--transition);
    }
    .mobile-menu ul li a:hover {
      background: var(--accent-soft);
    }

    /* ----- HERO (soft, modern) ----- */
    .hero {
      background: linear-gradient(145deg, #0b1e33 0%, #1b3350 100%);
      color: white;
      border-radius: 0 0 32px 32px;
      padding: 64px 24px;
      margin: 0 0 32px;
      text-align: center;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      right: -10%;
      top: -20%;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(43,122,255,0.15) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero-content {
      position: relative;
      z-index: 2;
      max-width: 720px;
      margin: 0 auto;
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.6rem;
      letter-spacing: -0.02em;
      margin-bottom: 16px;
    }
    .hero p {
      font-size: 1.1rem;
      opacity: 0.8;
      max-width: 560px;
      margin: 0 auto 28px;
    }
    .hero .btn-group {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 12px;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 28px;
      border-radius: var(--radius-full);
      font-weight: 600;
      transition: transform var(--transition), box-shadow var(--transition);
      font-size: 1rem;
      border: none;
    }
    .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 8px 20px rgba(43, 122, 255, 0.3);
    }
    .btn-primary:hover {
      transform: translateY(-2px);
      box-shadow: 0 12px 28px rgba(43, 122, 255, 0.35);
    }
    .btn-outline-light {
      background: transparent;
      border: 2px solid rgba(255,255,255,0.25);
      color: white;
    }
    .btn-outline-light:hover {
      background: rgba(255,255,255,0.08);
      border-color: rgba(255,255,255,0.5);
    }

    /* ----- SECTION TITLES ----- */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .section-head h2 {
      font-family: 'Poppins', sans-serif;
      font-weight: 600;
      font-size: 1.8rem;
      letter-spacing: -0.02em;
    }
    .section-head .sub {
      color: var(--text-muted);
      font-weight: 400;
      font-size: 1rem;
    }
    .section-head .see-all {
      color: var(--accent);
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: gap var(--transition);
    }
    .section-head .see-all:hover { gap: 10px; }

    /* ----- CATEGORIES (tiles) ----- */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
      gap: 16px;
      margin-bottom: 48px;
    }
    .cat-card {
      background: var(--surface);
      border-radius: var(--radius-card);
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border-light);
      transition: transform var(--transition), box-shadow var(--transition), border var(--transition);
      cursor: default;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent);
    }
    .cat-card .icon {
      font-size: 2rem;
      color: var(--accent);
      margin-bottom: 8px;
    }
    .cat-card h4 { font-weight: 600; font-size: 0.95rem; margin-top: 4px; }
    .cat-card .desc { font-size: 0.8rem; color: var(--text-muted); margin-top: 4px; }

    /* ----- PRODUCT GRID ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
      gap: 24px;
      margin-bottom: 48px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius-card);
      overflow: hidden;
      border: 1px solid var(--border-light);
      transition: transform var(--transition), box-shadow var(--transition);
      box-shadow: var(--shadow-sm);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
    }
    .product-card .img-wrap {
      height: 200px;
      background: #f2f6fd;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.3s;
    }
    .product-card:hover .img-wrap img { transform: scale(1.02); }
    .product-body {
      padding: 16px 16px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
    }
    .product-body .title {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 4px;
      display: -webkit-box;
      -webkit-line-clamp: 1;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-body .category-tag {
      font-size: 0.75rem;
      color: var(--text-muted);
      text-transform: capitalize;
      margin-bottom: 8px;
    }
    .product-body .price-row {
      display: flex;
      align-items: baseline;
      gap: 10px;
      margin-top: auto;
      padding-top: 8px;
    }
    .product-body .price-current {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .product-body .price-old {
      color: var(--text-muted);
      text-decoration: line-through;
      font-size: 0.9rem;
    }
    .product-body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 0.8rem;
      color: #f5b342;
      margin-top: 6px;
    }
    .product-footer {
      padding: 12px 16px 16px;
      display: flex;
      gap: 10px;
      border-top: 1px solid var(--border-light);
    }
    .btn-add {
      flex: 1;
      background: var(--primary);
      color: white;
      padding: 10px 0;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.9rem;
      transition: background var(--transition), transform var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .btn-add:hover {
      background: var(--accent);
      transform: scale(0.98);
    }
    .btn-wish {
      width: 44px;
      border-radius: 40px;
      border: 1px solid var(--border-light);
      transition: background var(--transition), border var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--text-muted);
    }
    .btn-wish:hover {
      background: var(--accent-soft);
      border-color: var(--accent);
      color: var(--accent);
    }

    /* ----- DEAL / FLASH SALE ----- */
    .deal-card {
      display: flex;
      flex-wrap: wrap;
      background: var(--surface);
      border-radius: var(--radius-card);
      overflow: hidden;
      border: 1px solid var(--border-light);
      box-shadow: var(--shadow-sm);
      margin-bottom: 48px;
    }
    .deal-card .deal-img {
      flex: 1 1 280px;
      min-height: 220px;
      background: #eef4fb;
    }
    .deal-card .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-card .deal-body {
      flex: 2 1 320px;
      padding: 28px 32px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-body .badge {
      background: #ff4d6d;
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.75rem;
      letter-spacing: 0.4px;
      display: inline-block;
      width: fit-content;
      margin-bottom: 12px;
    }
    .deal-body h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.7rem;
      margin-bottom: 4px;
    }
    .deal-body .deal-desc { color: var(--text-muted); margin-bottom: 16px; }
    .deal-body .price-big {
      font-size: 1.8rem;
      font-weight: 700;
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .deal-body .price-big .old {
      font-size: 1.1rem;
      font-weight: 400;
      color: var(--text-muted);
      text-decoration: line-through;
    }
    .timer {
      display: flex;
      gap: 10px;
      margin: 18px 0 16px;
    }
    .timer .time-box {
      background: var(--primary);
      color: white;
      padding: 8px 12px;
      border-radius: 12px;
      min-width: 60px;
      text-align: center;
    }
    .timer .time-box span {
      display: block;
      font-size: 1.6rem;
      font-weight: 700;
      letter-spacing: 0.5px;
    }
    .timer .time-box small {
      font-size: 0.65rem;
      opacity: 0.7;
      text-transform: uppercase;
    }

    /* ----- TESTIMONIALS (scroll) ----- */
    .testi-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testi-scroll .testi-item {
      flex: 0 0 280px;
      background: var(--surface);
      padding: 20px;
      border-radius: var(--radius-card);
      border: 1px solid var(--border-light);
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
    }
    .testi-item .stars { color: #f5b342; margin-bottom: 8px; }
    .testi-item p { font-size: 0.95rem; margin-bottom: 12px; color: var(--primary); }
    .testi-item .user {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testi-item .user img {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--border-light);
    }
    .testi-item .user .name { font-weight: 600; }
    .testi-item .user .role { font-size: 0.8rem; color: var(--text-muted); }

    /* ----- NEWSLETTER ----- */
    .newsletter-block {
      background: var(--primary);
      color: white;
      border-radius: var(--radius-card);
      padding: 48px 32px;
      text-align: center;
      margin-bottom: 24px;
    }
    .newsletter-block h3 { font-family: 'Poppins', sans-serif; font-size: 1.8rem; }
    .newsletter-block p { opacity: 0.7; margin-bottom: 20px; }
    .newsletter-form {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 12px;
      max-width: 480px;
      margin: 0 auto;
    }
    .newsletter-form input {
      flex: 1 1 200px;
      padding: 14px 20px;
      border-radius: var(--radius-full);
      border: none;
      font-size: 0.95rem;
      background: rgba(255,255,255,0.08);
      color: white;
      outline: none;
      border: 1px solid rgba(255,255,255,0.1);
      transition: background var(--transition);
    }
    .newsletter-form input::placeholder { color: rgba(255,255,255,0.6); }
    .newsletter-form input:focus { background: rgba(255,255,255,0.14); }
    .newsletter-form .btn-primary {
      background: var(--accent);
      color: white;
      padding: 14px 32px;
    }

    /* ----- FOOTER ----- */
    .footer {
      padding: 40px 0 24px;
      border-top: 1px solid var(--border-light);
      margin-top: 16px;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 32px;
    }
    .footer .brand-small { font-weight: 700; font-size: 1.2rem; }
    .footer .col p { color: var(--text-muted); max-width: 280px; margin: 8px 0 16px; }
    .footer .socials { display: flex; gap: 12px; }
    .footer .socials a {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: var(--border-light);
      display: inline-flex;
      align-items: center;
      justify-content: center;
      color: var(--primary);
      transition: background var(--transition), color var(--transition);
    }
    .footer .socials a:hover { background: var(--accent); color: white; }
    .footer .links {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
    }
    .footer .links .col h5 { font-weight: 600; margin-bottom: 8px; }
    .footer .links .col a {
      display: block;
      color: var(--text-muted);
      padding: 4px 0;
      transition: color var(--transition);
    }
    .footer .links .col a:hover { color: var(--primary); }
    .footer .copy {
      width: 100%;
      text-align: center;
      color: var(--text-muted);
      font-size: 0.85rem;
      padding-top: 24px;
      border-top: 1px solid var(--border-light);
    }

    /* ----- RESPONSIVE ----- */
    @media (max-width: 992px) {
      .nav-desktop { display: none; }
      .mobile-toggle { display: inline-block; }
      .search-wrapper input { width: 140px; }
    }
    @media (max-width: 768px) {
      .hero h1 { font-size: 2rem; }
      .product-grid { grid-template-columns: repeat(auto-fill, minmax(160px, 1fr)); }
      .deal-body { padding: 20px; }
      .deal-body h3 { font-size: 1.4rem; }
      .timer .time-box { min-width: 48px; padding: 6px 10px; }
      .timer .time-box span { font-size: 1.2rem; }
    }
    @media (max-width: 480px) {
      .header-inner { flex-wrap: wrap; }
      .search-wrapper { width: 100%; order: 3; }
      .search-wrapper input { width: 100%; }
      .hero { padding: 40px 16px; }
      .cat-grid { grid-template-columns: repeat(3, 1fr); }
    }
  </style>
</head>
<body>
  <!-- HEADER -->
  <header class="header">
    <div class="container header-inner">
      <div style="display: flex; align-items: center; gap: 10px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
          <i class="fas fa-bars"></i>
        </button>
        <a href="#" class="brand"><i class="fas fa-store-alt" style="color: var(--accent);"></i> Nexus<span class="highlight">Shop</span></a>
      </div>

      <ul class="nav-desktop">
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>

      <div class="header-actions">
        <div class="search-wrapper">
          <input type="text" id="searchInput" placeholder="Search..." aria-label="Search">
          <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
        </div>
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <a class="cart-badge" href="#" id="cartBtn" aria-label="Cart">
          <i class="fas fa-shopping-cart" style="font-size:1.3rem;"></i>
          <span class="count" id="cartCount">0</span>
        </a>
      </div>
    </div>

    <!-- Mobile menu -->
    <div class="mobile-menu" id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        </ul>
      </div>
    </div>
  </header>

  <!-- HERO -->
  <section class="hero">
    <div class="hero-content">
      <h1>New Winter Collection</h1>
      <p>Premium picks in fashion, tech & accessories. Limited deals, free shipping on select items.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
        <button class="btn btn-outline-light" id="exploreDeals">Explore Deals</button>
      </div>
    </div>
  </section>

  <main class="container">
    <!-- CATEGORIES -->
    <section id="categories">
      <div class="section-head">
        <h2>Shop by Category</h2>
        <span class="sub">Find what you love</span>
      </div>
      <div class="cat-grid" id="categoriesGrid"></div>
    </section>

    <!-- PRODUCTS -->
    <section id="products">
      <div class="section-head">
        <h2>Trending Products</h2>
        <a href="#" class="see-all">See all <i class="fas fa-chevron-right"></i></a>
      </div>
      <div class="product-grid" id="productsGrid"></div>
    </section>

    <!-- DEAL -->
    <section id="deals">
      <div class="section-head">
        <h2>Flash Sale</h2>
        <span class="sub">Limited time offers</span>
      </div>
      <div class="deal-card">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2">
        </div>
        <div class="deal-body">
          <span class="badge"><i class="fas fa-bolt"></i> 17% OFF</span>
          <h3>MacBook Air M2</h3>
          <p class="deal-desc">Thin, light, and incredibly fast.</p>
          <div class="price-big">$999 <span class="old">$1,199</span></div>
          <div class="timer" id="dealTimer">
            <div class="time-box"><span id="dealDays">0</span><small>Days</small></div>
            <div class="time-box"><span id="dealHours">00</span><small>Hrs</small></div>
            <div class="time-box"><span id="dealMinutes">00</span><small>Min</small></div>
            <div class="time-box"><span id="dealSeconds">00</span><small>Sec</small></div>
          </div>
          <p style="margin-top:6px;"><strong>12</strong> items left at this price</p>
          <button class="btn btn-primary" id="buyDeal" style="width:fit-content; margin-top:4px;"><i class="fas fa-cart-plus"></i> Buy Now</button>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section>
      <div class="section-head">
        <h2>What our customers say</h2>
        <span class="sub">Real reviews</span>
      </div>
      <div class="testi-scroll" id="testimonialsContainer">
        <!-- dynamic via js -->
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="newsletter-block">
      <h3>Stay in the loop</h3>
      <p>Subscribe for exclusive offers and new arrivals</p>
      <form class="newsletter-form" id="newsletterForm">
        <input type="email" id="newsletterEmail" placeholder="Your email address" required>
        <button class="btn btn-primary" type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:12px; font-size:0.95rem; display:none;"></div>
    </section>
  </main>

  <!-- FOOTER -->
  <footer class="container footer">
    <div>
      <div class="brand-small"><i class="fas fa-store-alt" style="color: var(--accent);"></i> NexusShop</div>
      <p>Modern e‑commerce demo with a clean, user‑friendly interface.</p>
      <div class="socials">
        <a href="#"><i class="fab fa-facebook-f"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="links">
      <div class="col">
        <h5>Company</h5>
        <a href="#">About</a>
        <a href="#">Careers</a>
        <a href="#">Press</a>
      </div>
      <div class="col">
        <h5>Support</h5>
        <a href="#">Help Center</a>
        <a href="#">Shipping</a>
        <a href="#">Contact</a>
      </div>
    </div>
    <div class="copy">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </footer>

  <script>
    // ----- DATA -----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category:'phones' },
      { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category:'laptops' },
      { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category:'footwear' },
      { id:5, title:'Sony A7 IV Camera', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category:'gadgets' },
      { id:6, title:'Chanel No. 5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category:'gadgets' }
    ];

    // ----- RENDER FUNCTIONS -----
    const catGrid = document.getElementById('categoriesGrid');
    const prodGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
