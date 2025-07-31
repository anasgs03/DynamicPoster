# 🗺️ South Korea AR Map Experience

An interactive WebAR experience that brings your South Korea map poster to life! Point your phone at the printed map and tap on cities to explore videos and information.

## 🎯 Features

- **WebAR Experience**: No app installation required - runs in browser
- **Interactive Cities**: Tap on 5 key locations in South Korea
- **Video Integration**: Each city plays informational videos
- **Mobile Optimized**: Works on smartphones and tablets
- **Free Hosting**: Deploy to GitHub Pages for free

## 📍 Supported Locations

1. **Seoraksan National Park** - Nature and hiking
2. **Gangneung** - Coastal city and Olympic venues  
3. **Wolpo Beach - LAB Training** - Marine research facilities
4. **Gyeongju** - Ancient Silla capital and UNESCO sites
5. **Busan** - Major port city and cultural hub

## 🚀 Quick Start

### Step 1: Prepare Your Map Image
1. Take a high-quality photo of your printed map (good lighting, minimal shadows)
2. Save it as `map-reference.jpg` in the `/assets/images/` folder
3. The image should be clear and high contrast for best tracking

### Step 2: Generate Image Target
1. Go to [MindAR Image Target Compiler](https://hiukim.github.io/mind-ar-js-doc/tools/compile)
2. Upload your `map-reference.jpg`
3. Download the generated `targets.mind` file
4. Place it in `/assets/` folder

### Step 3: Add Your Videos
Place your city videos in `/assets/videos/` with these names:
- `seoraksan.mp4` - Seoraksan National Park
- `gangneung.mp4` - Gangneung city
- `wolpo.mp4` - Wolpo Beach
- `gyeongju.mp4` - Gyeongju historical sites  
- `busan.mp4` - Busan city highlights

### Step 4: Deploy to GitHub Pages
1. Create a new GitHub repository
2. Upload all files to the repository
3. Go to Settings → Pages
4. Select "Deploy from a branch" → main branch
5. Your AR experience will be live at `https://yourusername.github.io/repository-name`

## 📁 Project Structure

```
📦 south-korea-ar-map/
├── 📄 index.html              # Main AR experience
├── 📄 README.md              # This file
├── 📄 setup-guide.md         # Detailed setup instructions
└── 📁 assets/
    ├── 📄 targets.mind       # Generated image target (you create this)
    ├── 📁 images/
    │   └── 📄 map-reference.jpg  # Your map photo (you add this)
    └── 📁 videos/
        ├── 📄 seoraksan.mp4  # City videos (you add these)
        ├── 📄 gangneung.mp4
        ├── 📄 wolpo.mp4
        ├── 📄 gyeongju.mp4
        └── 📄 busan.mp4
```

## 🛠️ Customization

### Adjust City Positions
Edit the `position` attributes in `index.html` for each city marker:
```html
<a-cylinder position="x y z" ...>
```
- `x`: left/right (-2 to 2)
- `y`: height (usually 0.1)
- `z`: forward/back (-2 to 2)

### Change City Information
Update the `cityData` object in the JavaScript section:
```javascript
const cityData = {
    'City Name': {
        description: 'Your description here',
        videoUrl: 'https://www.youtube.com/embed/VIDEO_ID'
    }
};
```

### Modify Visual Appearance
- **Colors**: Change `color` attributes on cylinders
- **Size**: Adjust `radius` and `height` of city markers
- **Animation**: Modify `animation` properties for different effects

## 📱 How to Use

1. **Print your map** on a good quality printer
2. **Share the web link** with users (QR code recommended)
3. **Point camera** at the printed map
4. **Wait for tracking** to detect the map
5. **Tap city markers** to explore content

## 🔧 Troubleshooting

### Map Not Detected
- Ensure good lighting
- Hold phone steady
- Map should be flat and clearly visible
- Try different angles/distances

### Poor Tracking
- Use a high-contrast map image
- Avoid glossy paper (matte works better)
- Ensure the reference image matches the printed map exactly

### Videos Not Playing
- Check file paths and names match exactly
- Ensure videos are in MP4 format
- Keep video file sizes reasonable (<50MB each)

Need help? Check the `setup-guide.md` file for detailed instructions or create an issue in the repository.

## 📄 License

This project uses MindAR.js (Apache 2.0) and A-Frame (MIT). Free for personal and commercial use.
