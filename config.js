/* 
 * Configuration file for South Korea AR Map
 * Edit these values to customize your experience
 */

// City positions on the map (adjust these to match your printed map)
const CITY_POSITIONS = {
    seoraksan: { x: 0, y: 0.1, z: 1.2 },      // Top center
    gangneung: { x: 1.5, y: 0.1, z: 0.8 },    // Northeast
    wolpo: { x: 1.3, y: 0.1, z: -0.2 },       // East coast
    gyeongju: { x: 0.8, y: 0.1, z: -1.0 },    // Southeast
    busan: { x: 0.2, y: 0.1, z: -1.8 }        // South
};

// City colors (use hex color codes)
const CITY_COLORS = {
    seoraksan: '#4CAF50',  // Green - nature
    gangneung: '#FF5722',  // Red-orange - coastal
    wolpo: '#2196F3',      // Blue - water/lab
    gyeongju: '#9C27B0',   // Purple - historical
    busan: '#FF9800'       // Orange - vibrant city
};

// City information and descriptions
const CITY_INFO = {
    'Seoraksan National Park': {
        description: 'A stunning national park famous for its autumn foliage, granite peaks, and ancient temples. Perfect for hiking and nature photography.',
        highlights: ['Autumn foliage', 'Granite peaks', 'Ancient temples', 'Hiking trails'],
        videoUrl: 'https://www.youtube.com/embed/dQw4w9WgXcQ' // Replace with actual video
    },
    'Gangneung': {
        description: 'A coastal city known for its beautiful beaches, coffee culture, and Olympic venues from the 2018 Winter Olympics.',
        highlights: ['Beautiful beaches', 'Coffee culture', 'Olympic venues', 'Coastal charm'],
        videoUrl: 'https://www.youtube.com/embed/dQw4w9WgXcQ' // Replace with actual video
    },
    'Wolpo Beach - LAB Training': {
        description: 'A pristine beach location perfect for marine research and laboratory training programs. Known for its clear waters and research facilities.',
        highlights: ['Marine research', 'Laboratory training', 'Clear waters', 'Research facilities'],
        videoUrl: 'https://www.youtube.com/embed/dQw4w9WgXcQ' // Replace with actual video
    },
    'Gyeongju': {
        description: 'The ancient capital of the Silla Kingdom, often called "the museum without walls" for its numerous historical sites and UNESCO World Heritage locations.',
        highlights: ['Ancient Silla capital', 'UNESCO sites', 'Historical tombs', 'Cultural heritage'],
        videoUrl: 'https://www.youtube.com/embed/dQw4w9WgXcQ' // Replace with actual video
    },
    'Busan': {
        description: 'South Korea\'s second-largest city and major port. Famous for its beaches, seafood, film festival, and vibrant culture. A gateway to international trade.',
        highlights: ['Major port city', 'Famous beaches', 'Film festival', 'Seafood culture'],
        videoUrl: 'https://www.youtube.com/embed/dQw4w9WgXcQ' // Replace with actual video
    }
};

// Animation settings
const ANIMATION_CONFIG = {
    rotationSpeed: 3000,      // Duration for one full rotation (milliseconds)
    markerHeight: 0.2,        // Height of city markers
    markerRadius: {           // Radius for each city marker
        default: 0.12,
        large: 0.15           // For major cities like Seoraksan and Busan
    }
};

// Video settings
const VIDEO_CONFIG = {
    autoplay: false,          // Whether videos auto-play when detected
    loop: true,               // Whether videos loop
    muted: true,              // Whether videos start muted
    maxDuration: 60           // Recommended max duration in seconds
};

// UI text and messages
const UI_TEXT = {
    title: 'South Korea AR Experience',
    instructions: '📱 Point your camera at the South Korea map\n📏 Hold phone 30-80cm away depending on map size\n🎯 Tap on the glowing city markers to learn more!',
    loading: {
        title: 'Loading AR Experience...',
        subtitle: 'Please wait while we prepare your South Korea map'
    },
    scanning: 'Scanning for map...',
    errors: {
        camera: 'Camera access required. Please allow camera permissions and refresh.',
        tracking: 'Map not detected. Try different distance (30-80cm) or lighting.',
        loading: 'Error loading AR experience. Please refresh and try again.'
    }
};

// Performance settings
const PERFORMANCE_CONFIG = {
    maxTrackTargets: 1,       // Number of maps to track simultaneously
    videoQuality: 720,        // Recommended video quality (720p, 1080p)
    maxVideoSize: 50,         // Max video file size in MB
    enableDeviceOrientation: false,
    colorManagement: true
};
