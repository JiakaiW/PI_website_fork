# Research Directions Structure

This folder contains the research directions that are automatically displayed on the website homepage. The structure is designed to be modular and easy to maintain.

## Folder Structure

```
research-directions/
├── README.md                           # This file
├── _includes/
│   └── research-cards.html            # Template for research cards
├── fluxonium-qubits/
│   ├── direction.md                   # Research direction content
│   ├── images/
│   │   └── research-image.jpg         # Main research image
│   └── members/
│       ├── student-name-1.jpg         # Student photo (filename = display name)
│       └── student-name-2.jpg         # Another student photo
├── quantum-error-correction/
│   ├── direction.md
│   ├── images/
│   │   └── research-image.jpg
│   └── members/
│       └── student-name.jpg
└── [other-research-directions]/
    ├── direction.md
    ├── images/
    └── members/
```

## How It Works

### 1. Research Direction Content (`direction.md`)

Each research direction folder contains a `direction.md` file with the following format:

```yaml
---
title: "Research Direction Title"
order: 1
keywords: ["keyword1", "keyword2", "keyword3"]
papers:
  - title: "Paper Title 1"
    authors: "Author list"
    journal: "Journal name"
    year: 2024
    url: "https://arxiv.org/abs/xxxx.xxxxx"
  - title: "Paper Title 2"
    authors: "Author list"
    journal: "Journal name"  
    year: 2023
    url: "https://arxiv.org/abs/xxxx.xxxxx"
---

Brief description of the research direction. This text will be displayed in the research card on the homepage.

The description should be concise but informative, explaining the key aspects of this research area and its significance to the overall research program.
```

### 2. Research Images (`images/research-image.jpg`)

- Place the main research image for each direction in the `images/` subfolder
- Filename should be `research-image.jpg` or `research-image.png`
- Recommended size: 400x300 pixels
- The image will be automatically displayed in the research card

### 3. Team Members (`members/`)

- Place student photos in the `members/` subfolder
- **Important**: The filename (without extension) becomes the display name
- Example: `john-smith.jpg` displays as "John Smith" on the webpage
- Use hyphens for spaces in names
- Recommended image size: 150x150 pixels (square)
- Supported formats: JPG, PNG

## Adding a New Research Direction

1. Create a new folder with a descriptive name (use hyphens for spaces)
2. Create the required subfolders: `images/` and `members/`
3. Create `direction.md` with the proper front matter and description
4. Add the research image to `images/research-image.jpg`
5. Add student photos to `members/` with proper filenames
6. The website will automatically include the new direction

## Editing Existing Research Directions

### To update research description:
- Edit the content in `direction.md`

### To add/remove papers:
- Update the `papers` section in the front matter of `direction.md`

### To add/remove team members:
- Add/remove photos in the `members/` folder
- Remember: filename = display name

### To change the research image:
- Replace `images/research-image.jpg` with the new image

## Display Order

Research directions are displayed in the order specified by the `order` field in each `direction.md` file. Lower numbers appear first.

## File Naming Conventions

- **Folder names**: Use lowercase with hyphens (e.g., `quantum-error-correction`)
- **Member photos**: Use lowercase with hyphens for names (e.g., `john-smith.jpg`)
- **Research images**: Always use `research-image.jpg` or `research-image.png`

## Automatic Features

The website automatically:
- Scans all research direction folders
- Generates research cards for the homepage
- Displays team members with names derived from filenames
- Links papers to their URLs
- Handles missing images gracefully with placeholders
- Sorts research directions by the `order` field

## Troubleshooting

**Research direction not showing:**
- Check that `direction.md` exists and has proper front matter
- Verify the folder is in the `research-directions/` directory

**Images not displaying:**
- Check image filenames match exactly: `research-image.jpg`
- Ensure images are in the correct `images/` subfolder
- Verify image files are not corrupted

**Student names not displaying correctly:**
- Check that photo filenames use hyphens for spaces
- Ensure photos are in the `members/` subfolder
- Use lowercase filenames for consistency

**Papers not linking:**
- Verify URLs in the `papers` section are correct
- Check YAML formatting in the front matter 