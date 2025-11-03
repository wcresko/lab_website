# Cresko Laboratory Website - Quarto Migration

This is your new Quarto-based academic website for the Cresko Laboratory. The structure has been set up following the template you specified, with all the main pages created and ready for your content.

## 📁 Project Structure

```
cresko-lab-quarto/
├── _quarto.yml           # Main configuration file
├── index.qmd            # Homepage
├── research.qmd         # Research page
├── publications.qmd     # Publications page
├── people.qmd          # Team members page
├── teaching.qmd        # Teaching and courses
├── posts.qmd           # News listing page
├── posts/              # Individual news posts
│   ├── 2024-11-15-woods-ms-magazine.qmd
│   └── 2024-10-01-lokey-chair.qmd
├── files/              # Static files
│   ├── images/         # Images and graphics
│   ├── profiles/       # Team member photos
│   ├── pdfs/          # PDF documents
│   └── includes/       # HTML includes (analytics, etc.)
├── styles.css          # Custom CSS styles
├── theme-light.scss    # Light theme
└── theme-dark.scss     # Dark theme
```

## 🚀 Getting Started

### Prerequisites

1. **Install Quarto**: Download and install from [https://quarto.org/docs/get-started/](https://quarto.org/docs/get-started/)

2. **Install Git** (if not already installed): For version control and GitHub Pages deployment

### Local Development

1. Navigate to the project directory:
```bash
cd cresko-lab-quarto
```

2. Preview the website locally:
```bash
quarto preview
```

This will open your browser and show a live preview of the site. Any changes you make will be automatically reflected.

3. To build the site:
```bash
quarto render
```

This creates the `docs/` folder with all the rendered HTML files.

## 📝 Next Steps to Complete the Migration

### 1. Content Migration

You'll need to:

- [ ] **Publications**: Add your actual publications to `publications.qmd`
- [ ] **People**: Update team member information in `people.qmd`
- [ ] **Research Projects**: Add current project details to `research.qmd`
- [ ] **News Posts**: Migrate existing news items to the `posts/` folder
- [ ] **Teaching**: Update course information in `teaching.qmd`

### 2. Images and Files

Add the following to the `files/` directory:

- [ ] Lab logo → `files/images/lab-logo.png`
- [ ] Hero image → `files/images/willamette-river.jpg`
- [ ] Team photos → `files/profiles/[name].jpg`
- [ ] PDF documents → `files/pdfs/`
- [ ] Favicon → `files/images/favicon.ico`

### 3. Additional Pages to Create

Based on your current site, you may want to add:

- [ ] `protocols.qmd` - Lab protocols
- [ ] `software.qmd` - Software tools (Stacks, etc.)
- [ ] `data.qmd` - Data resources
- [ ] Individual pages in `people/` folder for detailed team member profiles

### 4. GitHub Setup

1. Create a new repository named `wcresko.github.io` (or update your existing one)

2. Initialize git in your local folder:
```bash
git init
git add .
git commit -m "Initial Quarto website"
```

3. Add your GitHub repository as origin:
```bash
git remote add origin https://github.com/wcresko/wcresko.github.io.git
git branch -M main
git push -u origin main
```

4. Configure GitHub Pages:
   - Go to Settings → Pages in your repository
   - Set Source to "Deploy from a branch"
   - Set Branch to "main" and folder to "/docs"
   - Save the settings

### 5. Custom Domain (Optional)

If you want to use a custom domain:
1. Create a file named `CNAME` in the root directory with your domain
2. Update the `site-url` in `_quarto.yml`

## 🎨 Customization

### Styling
- Modify `styles.css` for custom styles
- Edit `theme-light.scss` and `theme-dark.scss` for theme colors
- The site uses University of Oregon colors (green and yellow)

### Navigation
- Edit the `navbar` section in `_quarto.yml` to add/remove menu items

### Footer
- Modify the `page-footer` section in `_quarto.yml`

## 📚 Adding New Content

### New News Post
Create a new file in `posts/` folder:
```markdown
---
title: "Your Post Title"
author: "Author Name"
date: "2024-11-20"
categories: [category1, category2]
---

Your content here...
```

### New Team Member
Add to the appropriate section in `people.qmd` or create a new file in `people/` folder.

## 🔧 Troubleshooting

### Common Issues

1. **Quarto not found**: Make sure Quarto is installed and in your PATH
2. **Rendering errors**: Check the YAML frontmatter in your .qmd files
3. **GitHub Pages not updating**: Check the Actions tab in your repository

## 📖 Resources

- [Quarto Documentation](https://quarto.org/docs/websites/)
- [Quarto Academic Website Guide](https://quarto.org/docs/websites/website-blog.html)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

## 📬 Support

For questions about the website structure, please refer to the Quarto documentation or create an issue in your repository.

---

**Note**: This is a starting template. You'll need to add your actual content, images, and customize the styling to match your preferences. The structure follows the template you specified while maintaining your lab's identity.
