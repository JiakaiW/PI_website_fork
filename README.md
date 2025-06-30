# Prof. Maxim Vavilov - Quantum Computing Research Website

A professional academic website for Professor Maxim Vavilov's quantum computing research group, built with Jekyll and designed for easy content management.

## Features

- **Professional Design**: Clean, academic-style layout with responsive design
- **Automatic Publications**: Dynamic loading of publications from arXiv
- **Organized Structure**: Modular file organization for easy maintenance
- **Single Page Application**: Smooth navigation without page reloads
- **Mobile Friendly**: Responsive design that works on all devices
- **Easy Updates**: Simple content management through markdown and HTML

## Quick Start

### Local Development

1. **Prerequisites**:
   - Ruby (version 2.7 or higher)
   - Bundler gem
   - Jekyll gem

2. **Installation**:
   ```bash
   git clone <repository-url>
   cd PI_website_fork
   bundle install
   ```

3. **Run locally**:
   ```bash
   bundle exec jekyll serve --livereload
   ```
   
4. **View the website**:
   Open your browser to `http://localhost:4000`

### GitHub Pages Deployment

The website is configured to deploy automatically to GitHub Pages:

1. Push changes to the `main` branch
2. GitHub Actions will build and deploy the site
3. Visit your GitHub Pages URL to see the live site

## File Structure

```
├── _layouts/
│   └── default.html          # Main page template
├── css/
│   ├── main.css             # Main styling
│   └── components.css       # Component-specific styles
├── js/
│   └── main.js              # Website functionality
├── images/                  # Photo storage
├── assets/                  # Other website assets
├── index.md                 # Main content file
├── _config.yml              # Jekyll configuration
├── WEBSITE_DOCUMENTATION.md # User guide for Prof. Vavilov
└── README.md               # This file
```

## Content Management

### For Professor Vavilov

See `WEBSITE_DOCUMENTATION.md` for detailed instructions on:
- Adding photos
- Updating research descriptions
- Adding news items
- Managing content without coding

### For Developers

#### Adding New Sections

1. Add the section HTML to `index.md`
2. Add corresponding navigation in `_layouts/default.html`
3. Update JavaScript in `js/main.js` if needed
4. Add styles in `css/components.css`

#### Styling Changes

- Main layout styles: `css/main.css`
- Component styles: `css/components.css`
- CSS variables for easy theming in `:root` of `main.css`

#### JavaScript Functionality

- Main class: `ProfessorWebsite` in `js/main.js`
- Navigation handling
- Publication loading from arXiv
- Dynamic content management

## Website Sections

### Home
- Welcome message and introduction
- Professor and team photo placeholders
- Research overview
- Call-to-action buttons

### Research
- Research direction cards
- Keyword tags
- Key research figure
- Hover animations

### Publications
- Automatic arXiv integration
- Dynamic loading with search query: `au:Maxim+Vavilov+AND+cat:quant-ph`
- Formatted display with abstracts
- Direct links to PDFs

### News
- Manually managed news items
- Chronological display
- Easy-to-update format

## Design System

### Colors
- Primary: `#2c3e50` (Dark blue-gray)
- Secondary: `#3498db` (Blue)
- Accent: `#e74c3c` (Red)
- Background: `#ffffff` (White)
- Secondary Background: `#f8f9fa` (Light gray)

### Typography
- Primary Font: Segoe UI, system fonts
- Secondary Font: Georgia, Times New Roman (headings)
- Responsive font sizes
- Proper line spacing for readability

### Components
- Cards with subtle shadows
- Hover animations
- Professional button styles
- Responsive grid layouts
- Loading animations

## Technical Details

### Jekyll Configuration
- Markdown: Kramdown
- Syntax highlighting: Rouge
- Plugins: jekyll-feed
- Responsive images
- Clean URLs

### JavaScript Features
- ES6+ class-based architecture
- Async/await for API calls
- DOM manipulation
- Error handling
- Cross-browser compatibility

### CSS Architecture
- CSS custom properties (variables)
- Mobile-first responsive design
- Flexbox and Grid layouts
- Smooth transitions
- Print-friendly styles

## Browser Support

- Chrome/Chromium (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Performance

- Optimized images
- Minimal JavaScript
- Efficient CSS
- Fast loading times
- Responsive images

## Maintenance

### Regular Updates
- News items (manual)
- Research descriptions (manual)
- Photos (manual)
- Publications (automatic from arXiv)

### Monitoring
- Check publication loading functionality
- Verify image loading
- Test responsive design
- Monitor loading speeds

## Contributing

For developers working on this project:

1. Follow the existing code style
2. Test on multiple devices/browsers
3. Update documentation for any changes
4. Maintain the clean, academic aesthetic
5. Ensure accessibility standards

## License

This website template is created for Prof. Maxim Vavilov's research group. Please respect academic and professional use guidelines.

## Support

For technical issues or questions:
- Check `WEBSITE_DOCUMENTATION.md` for content updates
- Review this README for development questions
- Contact the web development team for complex changes

---

**Built with Jekyll • Designed for Academic Excellence**