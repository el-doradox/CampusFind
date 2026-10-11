<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>CampusFind | Lost & Found</title>
  <link rel="stylesheet" href="assets/style.css">
</head>
<body>
  <header class="topbar">
    <div class="brand">CampusFind</div>
    <nav><a href="#how">How it works</a><a href="#reports">Reports</a></nav>
  </header>
  <main>
    <section class="hero">
      <span class="eyebrow">COLLEGE LOST & FOUND</span>
      <h1>Lost something on campus?<br><span>Let's help you find it.</span></h1>
      <p>A central place to report lost belongings, share found items, and coordinate their safe return.</p>
      <div class="actions">
        <a class="button primary" href="#reports">Search items</a>
        <a class="button secondary" href="#how">How it works</a>
      </div>
      <p class="notice">Starter preview: report submission, search, login, and database-backed listings still need to be implemented.</p>
    </section>
    <section id="how" class="section">
      <h2>Simple. Organized. Campus-friendly.</h2>
      <div class="cards">
        <article><div class="number">01</div><h3>Report an item</h3><p>Share the item name, category, date, and place where it was lost or found.</p></article>
        <article><div class="number">02</div><h3>Search listings</h3><p>Look through reports and narrow results by keywords and categories.</p></article>
        <article><div class="number">03</div><h3>Arrange a return</h3><p>Use a recovery request to coordinate with the reporter safely.</p></article>
      </div>
    </section>
    <section id="reports" class="section callout">
      <h2>Find a possible match</h2>
      <p>Search and report forms will be connected to the Java Servlet and MySQL backend in the next development step.</p>
    </section>
  </main>
  <footer>CampusFind · College Lost & Found Management System</footer>
</body>
</html>
