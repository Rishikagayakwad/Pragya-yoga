import "./Footer.css";

function Footer() {
  return (
    <footer className="footer">

      <div className="footer-container">

        {/* Logo Section */}
        <div className="footer-brand">
            
          <h2>🧘 Pragya Yoga Verse</h2>
          <p>Learn Yoga. Heal Mind. Transform Life.</p>
        </div>

        {/* Links */}
        <div className="footer-links">
          <h3>Quick Links</h3>
          <ul>
            <li>Home</li>
            <li>Categories</li>
            <li>Asanas</li>
           
            <li>About</li>
          </ul>
        </div>

        {/* Contact */}
        <div className="footer-contact">
          <h3>Contact</h3>
            <p>📞 +852 6708 2503</p>
          <p>📧  info@pragyayogaverse.com</p>
        
           <p>📍1303-04, 13/F Tak Woo House, 1-3 Wo On Lane, Central, Hong Kong</p>
        </div>

      </div>

      {/* Bottom */}
      <div className="footer-bottom">
        <p>© 2026 Pragya Yoga Verse. All rights reserved.</p>
      </div>

    </footer>
  );
}

export default Footer;