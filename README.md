# 🚌 Real-Time Bus Tracking System

A comprehensive real-time bus tracking solution with separate driver and passenger applications. Track buses in real-time, monitor route progress, and get accurate ETA estimates.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PHP Version](https://img.shields.io/badge/PHP-%3E%3D7.4-blue)](https://php.net)
[![MySQL](https://img.shields.io/badge/MySQL-%3E%3D5.7-orange)](https://www.mysql.com/)

## 📋 Table of Contents

- [Features](#features)
- [System Architecture](#system-architecture)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [API Documentation](#api-documentation)
- [Database Schema](#database-schema)
- [Contributing](#contributing)
- [License](#license)

## ✨ Features
![Alt Text](https://raw.githubusercontent.com/speedsri/village_bus_tracker/main/Admin-Dashboard-Bus-Tracking-System-1.png)
![Alt Text](https://github.com/speedsri/village_bus_tracker/blob/main/BusLK-Driver-Tracking-System-10-13-2025_01_05_PM.png)


### Driver App
- 🗺️ **Real-time GPS tracking** with automatic location updates every 10 seconds
- 🚦 **Trip management** - Start/stop trips with one click
- 📍 **Automatic stop detection** - System identifies nearest bus stops
- 🔄 **Direction control** - Switch between outbound/return routes
- 🗺️ **Interactive map** - Visualize route, stops, and current position
- ⚡ **Force stop** - Emergency trip termination
- 📱 **Responsive design** - Works on all devices

### Passenger App
- 📍 **Live bus tracking** - See bus location in real-time
- 📊 **Visual progress bar** - Track journey progress with stop markers
- ⏱️ **ETA calculator** - Accurate arrival time estimates
- 🚏 **Stop information** - Current and next stop details
- 🔔 **Notification system** - Alerts for approaching stops
- 📱 **Mobile optimized** - Seamless experience on all devices
- 🔄 **Auto-refresh** - Updates every 5 seconds

## 🏗️ System Architecture

```
┌─────────────────┐         ┌──────────────────┐         ┌─────────────────┐
│   Driver App    │────────▶│   API Server     │◀────────│  Passenger App  │
│  (GPS Sender)   │         │  (PHP Backend)   │         │ (Data Receiver) │
└─────────────────┘         └──────────────────┘         └─────────────────┘
        │                            │                             │
        │                            ▼                             │
        │                    ┌──────────────┐                     │
        └───────────────────▶│   MySQL DB   │◀────────────────────┘
                             └──────────────┘
```

### Data Flow

1. **Driver App** sends GPS coordinates every 10 seconds
2. **Server** processes location, identifies nearest stop
3. **Database** stores location with current/next stop data
4. **Passenger App** polls server every 5 seconds
5. **Server** returns latest bus data with progress info
6. **UI updates** map, progress bar, and information displays

## 🔧 Prerequisites

- **Web Server**: Apache 2.4+ or Nginx 1.18+
- **PHP**: 7.4 or higher
- **MySQL**: 5.7 or higher
- **Extensions**: 
  - `php-mysqli`
  - `php-json`
  - `php-session`
- **Browser**: Modern browser with HTML5 Geolocation support
- **SSL Certificate**: Recommended for production (required for HTTPS)

## 📦 Installation

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/bus-tracking-system.git
cd bus-tracking-system
```

### 2. Database Setup

```bash
# Import the database schema
mysql -u your_username -p < database/schema.sql

# Import sample data (optional)
mysql -u your_username -p < database/sample_data.sql
```

### 3. Configure Database Connection

```bash
# Copy the example config file
cp config/database.example.php config/database.php

# Edit with your database credentials
nano config/database.php
```

```php
<?php
// config/database.php
define('DB_HOST', 'localhost');
define('DB_USER', 'your_username');
define('DB_PASS', 'your_password');
define('DB_NAME', 'bus_tracking_db');
?>
```

### 4. Set Permissions

```bash
# Make sure the web server can read/write necessary files
chmod 755 api/
chmod 644 config/database.php
```

### 5. Configure Web Server

#### Apache (`.htaccess`)
```apache
RewriteEngine On
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^api/(.*)$ api/$1.php [L]
```

#### Nginx
```nginx
location /api/ {
    try_files $uri $uri.php $uri/ =404;
    fastcgi_pass unix:/var/run/php/php7.4-fpm.sock;
    fastcgi_index index.php;
    include fastcgi_params;
}
```

## ⚙️ Configuration

### Map Configuration

Edit `js/config.js` to customize map settings:

```javascript
const MAP_CONFIG = {
    defaultCenter: [7.488133, 80.364240], // Default map center
    defaultZoom: 14,
    updateInterval: 5000, // Passenger app update interval (ms)
    driverUpdateInterval: 10000, // Driver GPS update interval (ms)
    stopDetectionRadius: 100 // Meters to detect nearest stop
};
```

### Route Configuration

Add your bus routes and stops in the database:

```sql
-- Add a new route
INSERT INTO routes (route_name, start_location, end_location) 
VALUES ('Route 1', 'Kandy', 'Peradeniya');

-- Add bus stops
INSERT INTO bus_stops (route_id, stop_name, latitude, longitude, stop_order) 
VALUES (1, 'Main Stand', 7.488133, 80.364240, 1);
```

## 🚀 Usage

### For Drivers

1. **Login**: Access the driver app at `https://yourdomain.com/driver/`
   ```
   Default credentials:
   Username: driver1
   Password: driver123
   ```

2. **Start Trip**: Click the "Start Trip" button to begin tracking

3. **Monitor**: View real-time location, current stop, and route progress

4. **End Trip**: Click "End Trip" when journey is complete

### For Passengers

1. **Access**: Open `https://yourdomain.com/passenger/`

2. **View**: See real-time bus location on the map

3. **Track Progress**: Monitor the progress bar with stop markers

4. **Get ETA**: Check estimated arrival time to your stop

### Mobile Usage

Both apps are fully responsive and work on mobile devices. For best experience:
- Enable location permissions for driver app
- Keep the app open for continuous tracking
- Use in landscape mode for better map visibility

## 📡 API Documentation

### Driver API Endpoints

#### Update Location
```http
POST /api/update_location.php
Content-Type: application/json

{
    "trip_id": 123,
    "latitude": 7.488133,
    "longitude": 80.364240,
    "speed": 40
}
```

**Response:**
```json
{
    "success": true,
    "current_stop": "Main Stand",
    "next_stop": "Police Halt",
    "message": "Location updated successfully"
}
```

#### Start Trip
```http
POST /api/start_trip.php
Content-Type: application/json

{
    "driver_id": 1,
    "bus_id": 1,
    "route_id": 1
}
```

#### End Trip
```http
POST /api/end_trip.php
Content-Type: application/json

{
    "trip_id": 123
}
```

### Passenger API Endpoints

#### Get Bus Data
```http
GET /api/get_passenger_bus_data.php?route_id=1
```

**Response:**
```json
{
    "bus_data": {
        "latitude": 7.488133,
        "longitude": 80.364240,
        "current_stop_name": "Main Stand",
        "next_stop_name": "Police Halt",
        "progress_percentage": 35,
        "eta_minutes": 15,
        "bus_number": "KGA-001",
        "driver_name": "John Silva",
        "speed_kmh": 40,
        "passenger_count": 28
    },
    "bus_stops": [
        {
            "stop_id": 1,
            "stop_name": "Main Stand",
            "latitude": 7.488133,
            "longitude": 80.364240,
            "stop_order": 1,
            "is_current": true
        }
    ]
}
```

## 🗄️ Database Schema

### Core Tables

#### `bus_locations`
Stores real-time bus location data.

```sql
CREATE TABLE bus_locations (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    trip_id INT NOT NULL,
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL,
    speed_kmh DECIMAL(5, 2),
    current_stop_id INT,
    next_stop_id INT,
    is_current_location BOOLEAN DEFAULT 1,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### `bus_trips`
Manages bus trip sessions.

```sql
CREATE TABLE bus_trips (
    trip_id INT PRIMARY KEY AUTO_INCREMENT,
    bus_id INT NOT NULL,
    driver_id INT NOT NULL,
    route_id INT NOT NULL,
    trip_status ENUM('in_progress', 'completed') DEFAULT 'in_progress',
    start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_time TIMESTAMP NULL
);
```

#### `bus_stops`
Defines bus stops along routes.

```sql
CREATE TABLE bus_stops (
    stop_id INT PRIMARY KEY AUTO_INCREMENT,
    route_id INT NOT NULL,
    stop_name VARCHAR(100) NOT NULL,
    landmark VARCHAR(200),
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL,
    stop_order INT NOT NULL,
    estimated_time_from_start INT
);
```

[View complete schema →](database/schema.sql)

## 🔐 Security

- **Authentication**: Session-based authentication for driver app
- **SQL Injection**: Prepared statements for all queries
- **XSS Protection**: Input sanitization and output encoding
- **CORS**: Configure allowed origins in API headers
- **HTTPS**: Enforce SSL for production deployment

```php
// Example: Secure API endpoint
$stmt = $conn->prepare("SELECT * FROM bus_locations WHERE trip_id = ?");
$stmt->bind_param("i", $trip_id);
$stmt->execute();
```

## 🧪 Testing

### Manual Testing
1. Start a trip in driver app
2. Move around (or simulate with different coordinates)
3. Verify passenger app shows correct location
4. Check progress bar updates correctly
5. Verify ETA calculations

### Sample Test Cases
```bash
# Test location update
curl -X POST https://yourdomain.com/api/update_location.php \
  -H "Content-Type: application/json" \
  -d '{"trip_id": 1, "latitude": 7.488, "longitude": 80.364, "speed": 40}'

# Test passenger data retrieval
curl https://yourdomain.com/api/get_passenger_bus_data.php?route_id=1
```

## 📈 Performance Optimization

- **Database Indexing**: Add indexes on frequently queried fields
  ```sql
  CREATE INDEX idx_trip_id ON bus_locations(trip_id);
  CREATE INDEX idx_current_location ON bus_locations(is_current_location);
  ```

- **Caching**: Implement Redis for frequently accessed data
- **CDN**: Serve static assets via CDN
- **Connection Pooling**: Use persistent database connections
- **Query Optimization**: Limit result sets and use efficient queries

## 🐛 Troubleshooting

### GPS not working
- Ensure HTTPS is enabled (required for geolocation)
- Check browser permissions for location access
- Verify device GPS is enabled

### Location not updating
- Check database connection in logs
- Verify API endpoints are accessible
- Check network connectivity
- Review PHP error logs: `tail -f /var/log/apache2/error.log`

### Passenger app shows "No bus available"
- Confirm a trip is in progress
- Check `bus_locations` table has recent data
- Verify API response in browser console

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit changes: `git commit -m 'Add amazing feature'`
4. Push to branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

### Coding Standards
- Follow PSR-12 for PHP code
- Use ESLint for JavaScript
- Write meaningful commit messages
- Add comments for complex logic
- Update documentation as needed

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Authors

- **Your Name** - *Initial work* - [YourGitHub](https://github.com/yourusername)

## 🙏 Acknowledgments

- Leaflet.js for mapping functionality
- OpenStreetMap for map tiles
- Contributors and testers

## 📞 Support

- **Documentation**: [Wiki](https://github.com/yourusername/bus-tracking-system/wiki)
- **Issues**: [GitHub Issues](https://github.com/yourusername/bus-tracking-system/issues)
- **Email**: support@yourdomain.com

## 🗺️ Roadmap

- [ ] Push notifications for passengers
- [ ] Multi-route support in passenger app
- [ ] Driver performance analytics
- [ ] Mobile native apps (iOS/Android)
- [ ] Offline mode support
- [ ] Real-time passenger counting
- [ ] Historical trip data visualization

---

**⭐ Star this repo if you find it helpful!**

Made with ❤️ for better public transportation
