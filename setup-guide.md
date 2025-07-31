# 📋 Detailed Setup Guide

This guide will walk you through setting up your South Korea AR Map experience step by step.

## 🎯 Prerequisites

- A printed map of South Korea (the one you showed me)
- A smartphone with a modern browser (Chrome, Safari, Firefox)
- Basic understanding of file management
- GitHub account (for free hosting)

## 📸 Step 1: Prepare Your Map Image

### Taking the Perfect Reference Photo

1. **Lighting**: Use bright, even lighting (avoid harsh shadows)
2. **Angle**: Take photo straight-on (not at an angle)
3. **Distance**: Fill most of the frame with your map
4. **Focus**: Ensure the image is sharp and clear
5. **Format**: Save as JPG with high quality

### Image Requirements
- **Resolution**: At least 1024x1024 pixels
- **Contrast**: High contrast works best for tracking
- **Details**: Text and borders should be clearly visible
- **File Size**: Under 5MB for web performance

### Save Your Image
- Name it `map-reference.jpg`
- Place it in `assets/images/map-reference.jpg`

## 🎯 Step 2: Generate MindAR Image Target

This is the most important step - creating the `.mind` file that MindAR uses to track your map.

### Using the Online Compiler

1. **Go to**: [https://hiukim.github.io/mind-ar-js-doc/tools/compile](https://hiukim.github.io/mind-ar-js-doc/tools/compile)

2. **Upload your image**:
   - Click "Choose File"
   - Select your `map-reference.jpg`
   - Wait for upload to complete

3. **Check the preview**:
   - You should see feature points detected on your map
   - More feature points = better tracking
   - If you see very few points, try a different image with more contrast

4. **Download the target**:
   - Click "Compile" 
   - Download the generated `targets.mind` file
   - Place it in your `assets/` folder (not in a subfolder!)

### Troubleshooting Image Target Generation

**If you get "Not enough feature points":**
- Increase contrast in photo editing software
- Ensure map has detailed text and borders
- Try different lighting when taking the photo
- Avoid blurry or low-resolution images

**If tracking is poor:**
- The printed map must match the reference image exactly
- Same size, same orientation
- No additional elements on the printed version

## 🎬 Step 3: Add Your Videos

### Video Specifications
- **Format**: MP4 (H.264 codec recommended)
- **Size**: Maximum 50MB per video for web performance
- **Duration**: 30-60 seconds works best for mobile
- **Orientation**: Landscape preferred
- **Quality**: 720p is sufficient for mobile viewing

### Required Video Files
Place these in `assets/videos/`:

1. `seoraksan.mp4` - Seoraksan National Park
2. `gangneung.mp4` - Gangneung city and beaches
3. `wolpo.mp4` - Wolpo Beach research facilities
4. `gyeongju.mp4` - Historical Gyeongju sites
5. `busan.mp4` - Busan city highlights

### Video Content Suggestions

**Seoraksan National Park**:
- Autumn foliage footage
- Hiking trails and peaks
- Traditional temples

**Gangneung**:
- Beach scenes
- Coffee culture
- Olympic venues

**Wolpo Beach**:
- Marine research activities
- Laboratory facilities
- Coastal environment

**Gyeongju**:
- UNESCO World Heritage sites
- Ancient tombs and temples
- Historical artifacts

**Busan**:
- Port activities
- City skyline
- Cultural festivals

### Alternative: YouTube Videos
If you don't have local videos, you can use YouTube:

1. Find relevant YouTube videos for each city
2. Get the video ID from the URL (e.g., `dQw4w9WgXcQ` from `https://youtube.com/watch?v=dQw4w9WgXcQ`)
3. Update the `cityData` object in `index.html`:

```javascript
const cityData = {
    'Busan': {
        description: 'Your description',
        videoUrl: 'https://www.youtube.com/embed/YOUR_VIDEO_ID'
    }
};
```

## 🌐 Step 4: Deploy to GitHub Pages

### Create GitHub Repository

1. **Go to GitHub.com** and sign in to your account
   - If you don't have an account, click "Sign up" and create one (it's free)
   - Make sure you're logged in and can see your dashboard

2. **Create a new repository**:
   - Look for the green "New" button (usually near the top-left)
   - OR click the "+" icon in the top-right corner and select "New repository"
   - You'll be taken to the "Create a new repository" page

3. **Configure repository settings**:
   - **Repository name**: Enter `south-korea-ar-map` (or your preferred name)
     - Use lowercase letters, numbers, and hyphens only
     - No spaces or special characters
   - **Description** (optional): "Interactive AR map of South Korea with video content"
   - **Visibility**: Select "Public" ✅ 
     - This is REQUIRED for free GitHub Pages hosting
     - Private repositories need a paid plan for Pages
   - **Initialize repository**: 
     - ⚠️ **LEAVE ALL CHECKBOXES UNCHECKED**
     - Don't add README file
     - Don't add .gitignore
     - Don't choose a license
     - (We already have our files ready to upload)

4. **Create the repository**:
   - Click the green "Create repository" button
   - You'll see a page with setup instructions - we'll use the upload option

### Upload Your Files

**Before uploading, make sure you have these files ready:**
```
📁 Your project folder should contain:
├── index.html
├── config.js
├── dev-dashboard.html
├── quick-start.bat
├── README.md
├── setup-guide.md
├── size-guide.md
└── assets/
    ├── targets.mind
    ├── images/
    │   └── map-reference.jpg
    └── videos/
        ├── seoraksan.mp4
        ├── gangneung.mp4
        ├── wolpo.mp4
        ├── gyeongju.mp4
        └── busan.mp4
```

**Option A: Web Interface (Recommended for beginners)**

1. **Start the upload process**:
   - On your new repository page, look for the text "uploading an existing file"
   - Click on this link (it's usually in blue text)
   - You'll be taken to the upload page

2. **Upload your files**:
   - **Method 1 - Drag and Drop**:
     - Open your file explorer/finder
     - Select ALL your project files and folders
     - Drag them directly into the GitHub upload area
     - You should see "Drop to upload your files" message
   
   - **Method 2 - Choose Files**:
     - Click "choose your files" link
     - Use Ctrl+A (Windows) or Cmd+A (Mac) to select all files
     - Click "Open" to upload

3. **Verify the upload**:
   - You should see all your files listed
   - Check that the folder structure is correct
   - Make sure `assets/targets.mind` is in the right location

4. **Commit the files**:
   - Scroll down to the "Commit changes" section
   - **Commit message**: Enter "Initial AR map project upload"
   - **Description** (optional): "Added all HTML, JS, assets and video files"
   - Make sure "Commit directly to the main branch" is selected
   - Click the green "Commit changes" button

**Option B: GitHub Desktop (For regular users)**

1. **Download GitHub Desktop**:
   - Go to desktop.github.com
   - Download and install GitHub Desktop
   - Sign in with your GitHub account

2. **Clone your repository**:
   - In GitHub Desktop, click "Clone a repository from the Internet"
   - Find your `south-korea-ar-map` repository
   - Choose a local folder location
   - Click "Clone"

3. **Add your files**:
   - Copy all your project files into the cloned folder
   - GitHub Desktop will automatically detect the changes
   - You'll see all files listed under "Changes"

4. **Commit and push**:
   - Enter commit message: "Initial AR map project upload"
   - Click "Commit to main"
   - Click "Push origin" to upload to GitHub

**Option C: Git Commands** (For advanced users)
```bash
# Navigate to your project folder
cd path/to/your/south-korea-ar-map

# Initialize git repository
git init

# Add all files
git add .

# Commit files
git commit -m "Initial AR map project upload"

# Connect to GitHub repository (replace 'yourusername' with your GitHub username)
git remote add origin https://github.com/yourusername/south-korea-ar-map.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Common Upload Issues and Solutions

**Problem: "File too large" error**
- **Cause**: Video files over 25MB (GitHub's limit)
- **Solution**: 
  - Compress videos using online tools (cloudconvert.com)
  - Or use Git LFS for large files
  - Or host videos on YouTube and embed them

**Problem: "Repository not found" error**
- **Cause**: Repository name mismatch or private repository
- **Solution**: 
  - Double-check repository name spelling
  - Ensure repository is public
  - Check you're signed into the correct GitHub account

**Problem: Files not uploading via drag-and-drop**
- **Cause**: Browser compatibility or large file size
- **Solution**:
  - Try using Chrome or Firefox
  - Upload files in smaller batches
  - Use GitHub Desktop instead

**Problem: Folder structure gets flattened**
- **Cause**: Some browsers don't preserve folder structure
- **Solution**:
  - Upload folders one at a time
  - Use GitHub Desktop
  - Create folders manually on GitHub then upload files

**Verification Checklist:**
After upload, verify your repository has:
- ✅ `index.html` in the root
- ✅ `assets/targets.mind` file
- ✅ `assets/images/map-reference.jpg`
- ✅ `assets/videos/` folder with all video files
- ✅ All other project files in correct locations

### Enable GitHub Pages

1. **Go to your repository Settings**
2. **Scroll to "Pages" section**
3. **Source**: Deploy from a branch
4. **Branch**: main
5. **Folder**: / (root)
6. **Save**

Your site will be available at:
`https://yourusername.github.io/south-korea-ar-map`

## 📱 Step 5: Test Your AR Experience

### Testing Checklist

1. **Open the URL** on your smartphone
2. **Allow camera permissions** when prompted
3. **Point camera at your printed map**
4. **Wait for tracking** (you should see the spinning cylinders)
5. **Tap each city marker** to test interactions
6. **Check video playback** for each location

### Common Issues and Solutions

**"Camera not working"**
- Ensure HTTPS is enabled (GitHub Pages uses HTTPS by default)
- Check browser permissions for camera access
- Try a different browser

**"Map not detected"**
- Ensure printed map matches reference image exactly
- Check lighting conditions
- Hold phone steady at arm's length
- Try different angles

**"Markers in wrong positions"**
- The coordinates in the HTML might need adjustment
- Edit the `position` attributes for each city marker

**"Videos not playing"**
- Check file paths are correct
- Ensure videos are in MP4 format
- Try smaller file sizes if loading is slow

## 🎨 Step 6: Customize Your Experience

### Adjust City Positions

If the markers don't align with cities on your map:

1. **Open `index.html`**
2. **Find the city marker** you want to move
3. **Adjust the `position` attribute**:
   ```html
   <a-cylinder position="x y z" ...>
   ```
   - `x`: Move left (-) or right (+)
   - `y`: Height (keep at 0.1)
   - `z`: Move back (-) or forward (+)

### Change City Colors

Each city marker has a `color` attribute:
```html
<a-cylinder color="#4CAF50" ...>
```

Suggested colors:
- `#4CAF50` - Green
- `#FF5722` - Red-Orange  
- `#2196F3` - Blue
- `#9C27B0` - Purple
- `#FF9800` - Orange

### Modify Descriptions

Update the `cityData` object in the JavaScript section:
```javascript
const cityData = {
    'City Name': {
        description: 'Your custom description here...',
        videoUrl: 'https://www.youtube.com/embed/VIDEO_ID'
    }
};
```

## 📊 Step 7: Share Your Experience

### Create a QR Code
1. Use any QR code generator (qr-code-generator.com)
2. Enter your GitHub Pages URL
3. Download and print the QR code
4. Place it near your map poster

### Usage Instructions for Users
1. **Scan QR code** with phone camera
2. **Allow camera access** when prompted
3. **Point camera at map** 
4. **Wait for markers** to appear
5. **Tap markers** to explore!

## 🔧 Advanced Customization

### Adding More Cities
1. **Add new cylinder** in the HTML
2. **Set appropriate position**
3. **Add city data** to JavaScript object
4. **Include video file** in assets

### Changing Animations
```html
<a-cylinder 
    animation="property: rotation; to: 0 360 0; loop: true; dur: 3000">
```
- `property`: What to animate (rotation, position, scale)
- `to`: End value
- `dur`: Duration in milliseconds
- `loop`: true/false

### Custom Styling
Modify the CSS in the `<style>` section to change:
- Loading screen appearance
- Information panel design
- Instructions styling

## 🎯 Success Tips

1. **Test early and often** - Check each step before moving to the next
2. **Keep videos short** - 30-60 seconds for best mobile experience  
3. **Use high contrast maps** - Better tracking performance
4. **Optimize for mobile** - Most users will access on phones
5. **Provide clear instructions** - Include QR codes and simple directions

## 📞 Getting Help

If you run into issues:

1. **Check browser console** for error messages (F12 on desktop)
2. **Test with different browsers** (Chrome usually works best)
3. **Verify file paths** are correct (case-sensitive!)
4. **Check GitHub Pages status** in repository settings
5. **Test with different lighting** conditions

Remember: The most common issues are with the image target generation and file paths. Take your time with Step 2!

## 🚀 Next Steps

Once your basic AR experience is working:

- Add more interactive elements
- Include audio narration
- Create multiple map versions
- Add social sharing features
- Implement analytics to track usage

Good luck with your South Korea AR Map project! 🗺️✨
