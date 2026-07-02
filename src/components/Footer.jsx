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
            <li>Contact</li>
            <li>About</li>
          </ul>
        </div>

        {/* Contact */}
        <div className="footer-contact">
          <h3>Contact</h3>
          <p>📍 India</p>
          <p>📧 support@pragyayoga.com</p>
          <p>📞 +91 98765 43210</p>
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