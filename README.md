# 🚌 Village Bus Tracking System

> **Real-time bus tracking solution designed specifically for rural and village communities**

A comprehensive GPS-based tracking system that eliminates uncertainty about bus arrivals, helping passengers know exactly when their bus will arrive and enabling drivers to manage trips efficiently.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PHP Version](https://img.shields.io/badge/PHP-%3E%3D7.4-blue)](https://php.net)
[![MySQL](https://img.shields.io/badge/MySQL-%3E%3D5.7-orange)](https://www.mysql.com/)
[![Status](https://img.shields.io/badge/Status-Active-success)](https://github.com/yourusername/village-bus-tracker)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/yourusername/village-bus-tracker/pulls)

---

## 📖 Table of Contents

- [Why This System?](#-why-this-system)
- [Key Features](#-key-features)
- [System Architecture](#-system-architecture)
- [Screenshots](#-screenshots)
- [Prerequisites](#-prerequisites)
- [Quick Start](#-quick-start)
- [Installation Guide](#-installation-guide)
- [Configuration](#-configuration)
- [User Guides](#-user-guides)
- [API Documentation](#-api-documentation)
- [Database Schema](#-database-schema)
- [Deployment](#-deployment)
- [Troubleshooting](#-troubleshooting)
- [Contributing](#-contributing)
- [Roadmap](#-roadmap)
- [License](#-license)
- [Support](#-support)

---

## 🎯 Why This System?

### The Problem

In rural and village areas, passengers face significant challenges with public transportation:

- ❓ **Uncertainty** - Not knowing if the bus will arrive on a particular day
- ⏰ **Wasted Time** - Waiting endlessly at bus stops without information
- 📍 **No Visibility** - Unable to track bus location or estimate arrival time
- 🚌 **Inefficiency** - Drivers lack information about passenger demand at stops

### The Solution

This Bus Tracking System provides:

- ✅ **Real-time Tracking** - See exact bus location on interactive maps
- ⏱️ **Accurate ETAs** - Know precisely when the bus will arrive
- 📊 **Progress Monitoring** - Visual stop-by-stop journey tracking
- 🔔 **Smart Notifications** - Alerts for approaching buses
- 📱 **Mobile-First Design** - Works seamlessly on all devices
- 🌐 **Open Source** - Free to use, modify, and improve

---

## ✨ Key Features

### 🚗 Driver Application

<details>
<summary><b>Click to expand Driver App features</b></summary>

- **Simple Trip Management**
  - One-click start/stop trip controls
  - Automatic GPS tracking activation
  - No complex configurations needed

- **Real-time Location Broadcasting**
  - Sends GPS coordinates every 10 seconds
  - Automatic nearest stop detection
  - Direction control (outbound/return routes)

- **Interactive Dashboard**
  - Live route visualization on map
  - Current and upcoming stop information
  - Passenger count at next stops
  - Speed and distance tracking

- **Smart Features**
  - Force stop for emergencies
  - Manual location refresh option
  - Offline data caching
  - Low battery mode

</details>

### 👥 Passenger Application

<details>
<summary><b>Click to expand Passenger App features</b></summary>

- **Live Bus Tracking**
  - Real-time bus location updates (every 5 seconds)
  - Interactive map with route overlay
  - Multiple bus tracking on single route

- **Progress Visualization**
  - Color-coded progress bar
    - 🟢 **Green** - Passed stops
    - 🔵 **Blue** - Current stop (enlarged)
    - 🟠 **Orange** - Next stop
    - ⚪ **Gray** - Upcoming stops
  - Percentage completion indicator

- **Smart Information Display**
  - Estimated time of arrival (ETA)
  - Current bus speed
  - Driver name and bus number
  - Next stop details with landmarks
  - Distance calculations from your location

- **User-Friendly Interface**
  - No login required
  - Auto-refresh functionality
  - Responsive design for all screen sizes
  - Offline mode with cached data

</details>

### 🖥️ Admin Dashboard

<details>
<summary><b>Click to expand Admin Panel features</b></summary>

- **Comprehensive Management**
  - Route creation and editing
  - Bus stop management with coordinates
  - Driver and bus registration
  - Trip schedule configuration

- **Real-time Monitoring**
  - Live tracking of all active buses
  - Current trip status overview
  - System health monitoring
  - Active user statistics

- **Analytics & Reporting**
  - Trip history and logs
  - Performance metrics (speed, punctuality)
  - Passenger demand analysis
  - Driver performance reports
  - Route efficiency statistics

- **System Configuration**
  - Update intervals customization
  - Notification settings
  - Map configuration
  - Stop detection radius adjustment

</details>

---

## 🏗️ System Architecture

### High-Level Overview

```
┌─────────────────────┐         ┌──────────────────────┐         ┌─────────────────────┐
│                     │         │                      │         │                     │
│   DRIVER APP        │────────▶│   API SERVER         │◀────────│   PASSENGER APP     │
│   (GPS Sender)      │  POST   │   (PHP Backend)      │  GET    │   (Data Receiver)   │
│                     │  10s    │                      │  5s     │                     │
└─────────────────────┘         └──────────────────────┘         └─────────────────────┘
         │                               │                                  │
         │                               ▼                                  │
         │                       ┌───────────────┐                          │
         │                       │               │                          │
         └──────────────────────▶│   MySQL DB    │◀─────────────────────────┘
                                 │   (Storage)   │
                                 │               │
                                 └───────────────┘
                                         ▲
                                         │
                                 ┌───────────────┐
                                 │               │
                                 │  ADMIN PANEL  │
                                 │  (Management) │
                                 │               │
                                 └───────────────┘
```

### Data Flow Sequence

```
1. 🚗 Driver starts trip → Trip session created in database
2. 📍 Driver app sends GPS data → Location stored with timestamp
3. 🔄 Server processes location → Identifies nearest stop
4. 💾 Database updates → Current/next stop calculated
5. 👥 Passenger app polls → Retrieves latest data
6. 🗺️ UI updates → Map, progress bar, ETA refreshed
7. 🔁 Loop continues → Every 5-10 seconds
```

### Technology Stack

| Component | Technology | Purpose |
|-----------|-----------|---------|
| **Frontend** | HTML5, CSS3, JavaScript | Responsive user interfaces |
| **Mapping** | Leaflet.js + OpenStreetMap | Interactive maps and markers |
| **Backend** | PHP 7.4+ | API server and business logic |
| **Database** | MySQL 5.7+ | Data persistence and queries |
| **Geolocation** | HTML5 Geolocation API | GPS coordinate capture |
| **Server** | Apache/Nginx | Web server |
| **Authentication** | PHP Sessions | Secure driver login |

---

## 📸 Screenshots

### Driver Application

<!-- Screenshot 1: Driver Dashboard -->
![Driver Dashboard](path/to/screenshot1.png)
*Driver dashboard showing active trip with real-time location tracking*

<!-- Screenshot 2: Trip Management -->
![Trip Management](path/to/screenshot2.png)
*Easy trip start/stop controls with route visualization*

<!-- Screenshot 3: Live Tracking View -->
![Driver Live Tracking](path/to/screenshot3.png)
*Real-time map view showing current position and upcoming stops*

### Passenger Application

<!-- Screenshot 4: Passenger View -->
![Passenger Tracking View](path/to/screenshot4.png)
*Passenger interface with live bus location and progress bar*

<!-- Screenshot 5: Stop Details -->
![Stop Information](path/to/screenshot5.png)
*Detailed stop information with ETA and landmark details*

<!-- Screenshot 6: Progress Bar -->
![Visual Progress](path/to/screenshot6.png)
*Color-coded progress bar showing journey completion*

### Admin Dashboard

<!-- Screenshot 7: Admin Overview -->
![Admin Dashboard](path/to/screenshot7.png)
*Comprehensive admin dashboard with system overview*

<!-- Screenshot 8: Route Management -->
![Route Management](path/to/screenshot8.png)
*Route and stop management interface*

<!-- Screenshot 9: Analytics -->
![Analytics Dashboard](path/to/screenshot9.png)
*Trip analytics and performance reports*

---

## 🔧 Prerequisites

### Server Requirements

| Requirement | Minimum | Recommended |
|-------------|---------|-------------|
| **Web Server** | Apache 2.4+ / Nginx 1.18+ | Apache 2.4.41+ / Nginx 1.20+ |
| **PHP** | 7.4 | 8.0 or higher |
| **MySQL** | 5.7 | 8.0 or higher |
| **RAM** | 512 MB | 2 GB+ |
| **Storage** | 500 MB | 2 GB+ |
| **Bandwidth** | 10 Mbps | 50 Mbps+ |

### PHP Extensions Required

```bash
php-mysqli      # MySQL database connectivity
php-json        # JSON encoding/decoding
php-session     # Session management
php-curl        # HTTP requests (optional)
php-mbstring    # Multibyte string handling
```

### Client Requirements

- **Browser**: Modern browser with HTML5 support
  - Chrome 90+, Firefox 88+, Safari 14+, Edge 90+
- **GPS**: Device with GPS capabilities (for driver app)
- **Internet**: Stable connection (3G minimum, 4G+ recommended)
- **HTTPS**: Required for geolocation in production

---

## 🚀 Quick Start

Get up and running in 5 minutes:

```bash
# 1. Clone the repository
git clone https://github.com/yourusername/village-bus-tracker.git
cd village-bus-tracker

# 2. Import database
mysql -u root -p < database/schema.sql
mysql -u root -p < database/sample_data.sql

# 3. Configure database connection
cp config/database.example.php config/database.php
nano config/database.php  # Edit with your credentials

# 4. Set permissions
chmod 755 api/
chmod 644 config/database.php

# 5. Start your web server
# Access at: http://localhost/village-bus-tracker
```

**Default Login Credentials:**
- Driver: `driver1` / `driver123`
- Admin: `admin` / `admin123`

⚠️ **Change these credentials immediately in production!**

---

## 📦 Installation Guide

### Step 1: Clone Repository

```bash
git clone https://github.com/yourusername/village-bus-tracker.git
cd village-bus-tracker
```

### Step 2: Database Setup

#### Create Database

```sql
CREATE DATABASE bus_tracking_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER 'bus_user'@'localhost' IDENTIFIED BY 'secure_password';
GRANT ALL PRIVILEGES ON bus_tracking_db.* TO 'bus_user'@'localhost';
FLUSH PRIVILEGES;
```

#### Import Schema

```bash
mysql -u bus_user -p bus_tracking_db < database/schema.sql
```

#### Import Sample Data (Optional)

```bash
mysql -u bus_user -p bus_tracking_db < database/sample_data.sql
```

### Step 3: Configure Application

#### Database Configuration

```bash
cp config/database.example.php config/database.php
```

Edit `config/database.php`:

```php
<?php
define('DB_HOST', 'localhost');
define('DB_USER', 'bus_user');
define('DB_PASS', 'secure_password');
define('DB_NAME', 'bus_tracking_db');
define('DB_PORT', 3306);

// Error reporting (disable in production)
define('SHOW_ERRORS', false);
?>
```

#### Map Configuration

Edit `js/config.js`:

```javascript
const MAP_CONFIG = {
    // Default map center [latitude, longitude]
    defaultCenter: [7.488133, 80.364240], // Kandy, Sri Lanka
    defaultZoom: 14,
    
    // Update intervals (milliseconds)
    driverUpdateInterval: 10000,  // 10 seconds
    passengerUpdateInterval: 5000, // 5 seconds
    
    // Stop detection radius (meters)
    stopDetectionRadius: 100,
    
    // Map tile server
    tileServer: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
    attribution: '© OpenStreetMap contributors'
};
```

### Step 4: Web Server Configuration

#### Apache Configuration

Create/edit `.htaccess`:

```apache
<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteBase /
    
    # Redirect API requests
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteRule ^api/(.*)$ api/$1.php [L]
    
    # Force HTTPS (production only)
    # RewriteCond %{HTTPS} off
    # RewriteRule ^(.*)$ https://%{HTTP_HOST}/$1 [R=301,L]
</IfModule>

# Security headers
<IfModule mod_headers.c>
    Header set X-Content-Type-Options "nosniff"
    Header set X-Frame-Options "SAMEORIGIN"
    Header set X-XSS-Protection "1; mode=block"
</IfModule>

# Disable directory browsing
Options -Indexes
```

#### Nginx Configuration

Add to your server block:

```nginx
server {
    listen 80;
    server_name yourdomain.com;
    root /var/www/village-bus-tracker;
    index index.php index.html;

    # API routing
    location /api/ {
        try_files $uri $uri.php $uri/ =404;
        
        location ~ \.php$ {
            fastcgi_pass unix:/var/run/php/php7.4-fpm.sock;
            fastcgi_index index.php;
            fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
            include fastcgi_params;
        }
    }

    # Main location
    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    # PHP processing
    location ~ \.php$ {
        fastcgi_pass unix:/var/run/php/php7.4-fpm.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }

    # Security
    location ~ /\.(?!well-known).* {
        deny all;
    }
}
```

### Step 5: Set File Permissions

```bash
# Make directories writable
chmod 755 api/
chmod 755 uploads/
chmod 755 logs/

# Secure configuration files
chmod 644 config/*.php
chmod 644 .htaccess

# Make log files writable
touch logs/app.log
chmod 666 logs/app.log
```

### Step 6: Verify Installation

1. **Test API Endpoints:**
   ```bash
   curl http://localhost/api/health_check.php
   ```

2. **Test Database Connection:**
   ```bash
   php test_connection.php
   ```

3. **Access Applications:**
   - Driver App: `http://localhost/driver/`
   - Passenger App: `http://localhost/passenger/`
   - Admin Panel: `http://localhost/admin/`

---

## ⚙️ Configuration

### Route Configuration

Add routes and stops via Admin Panel or directly in database:

```sql
-- Add a new route
INSERT INTO routes (route_name, route_number, start_location, end_location, distance_km) 
VALUES ('Kandy - Peradeniya', '655', 'Kandy Bus Stand', 'Peradeniya University', 8.5);

-- Add bus stops
INSERT INTO bus_stops (route_id, stop_name, landmark, latitude, longitude, stop_order, estimated_time_from_start) 
VALUES 
    (1, 'Kandy Main Stand', 'Clock Tower', 7.293730, 80.636696, 1, 0),
    (1, 'Peradeniya Junction', 'Hospital Junction', 7.267506, 80.596343, 2, 10),
    (1, 'University Gate', 'Main Entrance', 7.254440, 80.597263, 3, 15);
```

### Notification Settings

Edit `config/notifications.php`:

```php
<?php
return [
    'enabled' => true,
    'near_stop_distance' => 200, // meters
    'arrival_threshold' => 5, // minutes
    'methods' => [
        'push' => true,
        'sms' => false,
        'email' => false
    ]
];
?>
```

### Performance Tuning

Edit `config/performance.php`:

```php
<?php
return [
    'cache_enabled' => true,
    'cache_duration' => 30, // seconds
    'max_locations_stored' => 1000,
    'cleanup_old_data_days' => 30,
    'database_pool_size' => 10
];
?>
```

---

## 📚 User Guides

### For Drivers

#### Starting a Trip

1. **Login** with your credentials
2. **Select your bus** and route
3. **Enable GPS** on your device
4. Click **"Start Trip"** button
5. Monitor your progress on the dashboard

#### During the Trip

- Location automatically updates every 10 seconds
- Current and next stops are displayed
- You can manually refresh location if needed
- Use **"Change Direction"** for return trips

#### Ending a Trip

1. Click **"Stop Trip"** when you reach the destination
2. Confirm the trip completion
3. View trip summary and statistics

### For Passengers

#### Tracking a Bus

1. **Open the passenger app** (no login required)
2. **Select your route** from the list
3. **View the map** to see bus location
4. **Check the progress bar** for stop-by-stop tracking
5. **Note the ETA** to plan your departure

#### Understanding the Interface

- **Map**: Shows live bus position with a moving marker
- **Progress Bar**: Color-coded dots for each stop
- **Information Panel**: Displays ETA, speed, and stop details
- **Refresh Button**: Manual update if data seems stale

### For Administrators

#### Managing Routes

1. Navigate to **Routes Management**
2. Click **"Add New Route"**
3. Enter route details and coordinates
4. Add stops with landmarks and order
5. Save and activate the route

#### Monitoring System

- View **Dashboard** for real-time statistics
- Check **Active Trips** for current operations
- Review **Trip History** for past performance
- Analyze **Reports** for insights

---

## 📡 API Documentation

### Base URL

```
https://yourdomain.com/api/
```

### Authentication

Driver endpoints require session authentication. Include session cookie in requests.

### Endpoints

#### Driver Endpoints

##### Start Trip

```http
POST /api/start_trip.php
Content-Type: application/json

Request Body:
{
    "driver_id": 1,
    "bus_id": 1,
    "route_id": 1,
    "direction": "outbound"
}

Response (200 OK):
{
    "success": true,
    "trip_id": 123,
    "message": "Trip started successfully",
    "start_time": "2025-10-15 08:30:00"
}

Error Response (400):
{
    "success": false,
    "error": "Driver already has an active trip"
}
```

##### Update Location

```http
POST /api/update_location.php
Content-Type: application/json

Request Body:
{
    "trip_id": 123,
    "latitude": 7.293730,
    "longitude": 80.636696,
    "speed": 45.5,
    "heading": 90
}

Response (200 OK):
{
    "success": true,
    "current_stop": {
        "stop_id": 2,
        "stop_name": "Peradeniya Junction",
        "landmark": "Hospital Junction"
    },
    "next_stop": {
        "stop_id": 3,
        "stop_name": "University Gate",
        "landmark": "Main Entrance",
        "distance_km": 1.2
    },
    "message": "Location updated successfully"
}
```

##### End Trip

```http
POST /api/end_trip.php
Content-Type: application/json

Request Body:
{
    "trip_id": 123,
    "end_reason": "completed"
}

Response (200 OK):
{
    "success": true,
    "message": "Trip ended successfully",
    "trip_summary": {
        "duration_minutes": 45,
        "distance_km": 8.5,
        "average_speed": 11.3,
        "stops_covered": 10
    }
}
```

#### Passenger Endpoints

##### Get Bus Data

```http
GET /api/get_passenger_bus_data.php?route_id=1

Response (200 OK):
{
    "success": true,
    "bus_data": {
        "trip_id": 123,
        "bus_number": "KGA-655",
        "driver_name": "John Silva",
        "latitude": 7.267506,
        "longitude": 80.596343,
        "speed_kmh": 45.5,
        "heading": 90,
        "current_stop_id": 2,
        "current_stop_name": "Peradeniya Junction",
        "next_stop_id": 3,
        "next_stop_name": "University Gate",
        "progress_percentage": 35,
        "eta_minutes": 12,
        "last_update": "2025-10-15 08:45:32"
    },
    "bus_stops": [
        {
            "stop_id": 1,
            "stop_name": "Kandy Main Stand",
            "landmark": "Clock Tower",
            "latitude": 7.293730,
            "longitude": 80.636696,
            "stop_order": 1,
            "is_passed": true,
            "is_current": false,
            "is_next": false
        },
        {
            "stop_id": 2,
            "stop_name": "Peradeniya Junction",
            "landmark": "Hospital Junction",
            "latitude": 7.267506,
            "longitude": 80.596343,
            "stop_order": 2,
            "is_passed": false,
            "is_current": true,
            "is_next": false
        }
        // ... more stops
    ]
}

No Active Bus (200 OK):
{
    "success": false,
    "message": "No active bus found on this route"
}
```

##### Get All Active Buses

```http
GET /api/get_all_active_buses.php

Response (200 OK):
{
    "success": true,
    "buses": [
        {
            "trip_id": 123,
            "route_name": "Kandy - Peradeniya",
            "bus_number": "KGA-655",
            "latitude": 7.267506,
            "longitude": 80.596343,
            "current_stop": "Peradeniya Junction"
        }
        // ... more buses
    ],
    "total_active": 3
}
```

### Error Codes

| Code | Description |
|------|-------------|
| 200 | Success |
| 400 | Bad Request - Invalid parameters |
| 401 | Unauthorized - Authentication required |
| 404 | Not Found - Resource doesn't exist |
| 500 | Internal Server Error |

### Rate Limiting

- **Driver endpoints**: 1 request per second
- **Passenger endpoints**: 1 request per 5 seconds
- Exceeding limits returns `429 Too Many Requests`

---

## 🗄️ Database Schema

### Entity Relationship Diagram

```
┌─────────────┐         ┌──────────────┐         ┌─────────────┐
│   drivers   │────────▶│  bus_trips   │◀────────│    buses    │
└─────────────┘  1:N    └──────────────┘   N:1   └─────────────┘
                              │  1:N
                              ▼
                        ┌──────────────────┐
                        │  bus_locations   │
                        └──────────────────┘
                              │
                              ▼
                        ┌──────────────┐
                        │  bus_stops   │◀──────┐
                        └──────────────┘       │
                              │  N:1           │ 1:N
                              └────────────────┘
                                   routes
```

### Core Tables

#### `drivers`
```sql
CREATE TABLE drivers (
    driver_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    license_number VARCHAR(50),
    status ENUM('active', 'inactive') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_username (username),
    INDEX idx_status (status)
);
```

#### `buses`
```sql
CREATE TABLE buses (
    bus_id INT PRIMARY KEY AUTO_INCREMENT,
    bus_number VARCHAR(20) UNIQUE NOT NULL,
    registration_number VARCHAR(50) UNIQUE,
    capacity INT,
    bus_type ENUM('standard', 'luxury', 'express') DEFAULT 'standard',
    status ENUM('active', 'maintenance', 'retired') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_bus_number (bus_number),
    INDEX idx_status (status)
);
```

#### `routes`
```sql
CREATE TABLE routes (
    route_id INT PRIMARY KEY AUTO_INCREMENT,
    route_name VARCHAR(100) NOT NULL,
    route_number VARCHAR(20),
    start_location VARCHAR(100) NOT NULL,
    end_location VARCHAR(100) NOT NULL,
    distance_km DECIMAL(6, 2),
    estimated_duration_minutes INT,
    status ENUM('active', 'inactive') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_route_number (route_number),
    INDEX idx_status (status)
);
```

#### `bus_stops`
```sql
CREATE TABLE bus_stops (
    stop_id INT PRIMARY KEY AUTO_INCREMENT,
    route_id INT NOT NULL,
    stop_name VARCHAR(100) NOT NULL,
    landmark VARCHAR(200),
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL,
    stop_order INT NOT NULL,
    estimated_time_from_start INT, -- minutes
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (route_id) REFERENCES routes(route_id) ON DELETE CASCADE,
    INDEX idx_route_order (route_id, stop_order),
    INDEX idx_coordinates (latitude, longitude)
);
```

#### `bus_trips`
```sql
CREATE TABLE bus_trips (
    trip_id INT PRIMARY KEY AUTO_INCREMENT,
    bus_id INT NOT NULL,
    driver_id INT NOT NULL,
    route_id INT NOT NULL,
    trip_direction ENUM('outbound', 'return') DEFAULT 'outbound',
    trip_status ENUM('in_progress', 'completed', 'cancelled') DEFAULT 'in_progress',
    start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_time TIMESTAMP NULL,
    total_distance_km DECIMAL(6, 2),
    average_speed_kmh DECIMAL(5, 2),
    FOREIGN KEY (bus_id) REFERENCES buses(bus_id),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
    FOREIGN KEY (route_id) REFERENCES routes(route_id),
    INDEX idx_status (trip_status),
    INDEX idx_driver (driver_id),
    INDEX idx_route (route_id),
    INDEX idx_start_time (start_time)
);
```

#### `bus_locations`
```sql
CREATE TABLE bus_locations (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    trip_id INT NOT NULL,
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL,
    speed_kmh DECIMAL(5, 2),
    heading DECIMAL(5, 2), -- 0-360 degrees
    current_stop_id INT,
    next_stop_id INT,
    is_current_location BOOLEAN DEFAULT 1,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (trip_id) REFERENCES bus_trips(trip_id) ON DELETE CASCADE,
    FOREIGN KEY (current_stop_id) REFERENCES bus_stops(stop_id),
    FOREIGN KEY (next_stop_id) REFERENCES bus_stops(stop_id),
    INDEX idx_trip (trip_id),
    INDEX idx_current (is_current_location),
    INDEX idx_timestamp (timestamp)
);
```

### Database Optimization

#### Indexes for Performance

```sql
-- Composite index for location queries
CREATE INDEX idx_trip_current ON bus_locations(trip_id, is_current_location);

-- Index for cleanup operations
CREATE INDEX idx_old_locations ON bus_locations(timestamp, is_current_location);

-- Full-text search for stops
ALTER TABLE bus_stops ADD FULLTEXT INDEX idx_search (stop_name, landmark);
```

#### Maintenance Queries

```sql
-- Clean up old locations (keep last 1000 per trip)
DELETE FROM bus_locations 
WHERE location_id NOT IN (
    SELECT location_id FROM (
        SELECT location_id 
        FROM bus_locations 
        WHERE trip_id = ? 
        ORDER BY timestamp DESC 
        LIMIT 1000
    ) AS keep
) AND trip_id = ?;

-- Archive completed trips older than 30 days
INSERT INTO archived_trips 
SELECT * FROM bus_trips 
WHERE trip_status = 'completed' 
AND end_time < DATE_SUB(NOW(), INTERVAL 30 DAY);
```

---

## 🚀 Deployment

### Production Checklist

- [ ] SSL certificate installed and configured
- [ ] Database credentials secured
- [ ] Debug mode disabled
- [ ] Error logging enabled
- [ ] File permissions reviewed
- [ ] Firewall rules configured
- [ ] Backup system implemented
- [ ] Monitoring tools set up
- [ ] Default passwords changed
- [ ] API rate limiting enabled

### SSL Configuration (Let's Encrypt)

```bash
# Install Certbot
sudo apt-get update
sudo apt-get install certbot python3-certbot-apache

# Obtain certificate
sudo certbot --apache -d yourdomain.com -d www.yourdomain.com

# Auto-renewal (runs twice daily)
sudo systemctl enable certbot.timer
sudo systemctl start certbot.timer

# Test renewal
sudo certbot renew --dry-run
```

### Environment-Specific Configuration

#### Production (`config/production.php`)

```php
<?php
define('ENVIRONMENT', 'production');
define('DEBUG_MODE', false);
define('SHOW_ERRORS', false);

// Logging
define('LOG_ENABLED', true);
define('LOG_LEVEL', 'error'); // error, warning, info
define('LOG_PATH', '/var/log/bus-tracker/');

// Security
define('FORCE_HTTPS', true);
define('SESSION_SECURE', true);
define('SESSION_HTTPONLY', true);

// Performance
define('CACHE_ENABLED', true);
define('GZIP_ENABLED', true);
?>
```

#### Development (`config/development.php`)

```php
<?php
define('ENVIRONMENT', 'development');
define('DEBUG_MODE', true);
define('SHOW_ERRORS', true);

// Logging
define('LOG_ENABLED', true);
define('LOG_LEVEL', 'debug');
define('LOG_PATH', './logs/');

// Security (relaxed for development)
define('FORCE_HTTPS', false);
define('SESSION_SECURE', false);
?>
```

### Docker Deployment

Create `docker-compose.yml`:

```yaml
version: '3.8'

services:
  web:
    image: php:7.4-apache
    container_name: bus_tracker_web
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - ./:/var/www/html
      - ./config/apache/000-default.conf:/etc/apache2/sites-available/000-default.conf
    depends_on:
      - db
    environment:
      - DB_HOST=db
      - DB_USER=bus_user
      - DB_PASS=secure_password
      - DB_NAME=bus_tracking_db

  db:
    image: mysql:8.0
    container_name: bus_tracker_db
    ports:
      - "3306:3306"
    volumes:
      - db_data:/var/lib/mysql
      - ./database/schema.sql:/docker-entrypoint-initdb.d/1-schema.sql
      - ./database/sample_data.sql:/docker-entrypoint-initdb.d/2-data.sql
    environment:
      - MYSQL_ROOT_PASSWORD=root_password
      - MYSQL_DATABASE=bus_tracking_db
      - MYSQL_USER=bus_user
      - MYSQL_PASSWORD=secure_password

  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    container_name: bus_tracker_phpmyadmin
    ports:
      - "8080:80"
    depends_on:
      - db
    environment:
      - PMA_HOST=db
      - PMA_USER=root
      - PMA_PASSWORD=root_password

volumes:
  db_data:
```

Deploy with Docker:

```bash
# Build and start containers
docker-compose up -d

# View logs
docker-compose logs -f

# Stop containers
docker-compose down
```

### Backup Strategy

#### Automated Database Backup

Create `scripts/backup.sh`:

```bash
#!/bin/bash

# Configuration
DB_USER="bus_user"
DB_PASS="secure_password"
DB_NAME="bus_tracking_db"
BACKUP_DIR="/backups/bus-tracker"
DATE=$(date +"%Y%m%d_%H%M%S")

# Create backup directory
mkdir -p $BACKUP_DIR

# Backup database
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME | gzip > $BACKUP_DIR/db_backup_$DATE.sql.gz

# Backup files
tar -czf $BACKUP_DIR/files_backup_$DATE.tar.gz /var/www/html/village-bus-tracker

# Keep only last 7 days of backups
find $BACKUP_DIR -name "*.gz" -mtime +7 -delete

echo "Backup completed: $DATE"
```

Schedule with cron:

```bash
# Edit crontab
crontab -e

# Add daily backup at 2 AM
0 2 * * * /path/to/scripts/backup.sh >> /var/log/backup.log 2>&1
```

### Monitoring Setup

#### Install monitoring tools

```bash
# Install monitoring stack
sudo apt-get install prometheus grafana

# Configure Prometheus
sudo nano /etc/prometheus/prometheus.yml
```

#### Application Health Endpoint

Create `api/health_check.php`:

```php
<?php
header('Content-Type: application/json');

$health = [
    'status' => 'healthy',
    'timestamp' => date('Y-m-d H:i:s'),
    'checks' => []
];

// Database check
try {
    require_once '../config/database.php';
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    if ($conn->connect_error) {
        throw new Exception($conn->connect_error);
    }
    $health['checks']['database'] = 'ok';
    $conn->close();
} catch (Exception $e) {
    $health['status'] = 'unhealthy';
    $health['checks']['database'] = 'failed';
}

// Disk space check
$disk_free = disk_free_space('/');
$disk_total = disk_total_space('/');
$disk_usage = round(($disk_total - $disk_free) / $disk_total * 100, 2);
$health['checks']['disk_usage'] = $disk_usage . '%';

if ($disk_usage > 90) {
    $health['status'] = 'warning';
}

http_response_code($health['status'] === 'healthy' ? 200 : 503);
echo json_encode($health, JSON_PRETTY_PRINT);
?>
```

---

## 🐛 Troubleshooting

### Common Issues and Solutions

#### GPS Not Working

**Problem:** Location not updating in driver app

**Solutions:**
1. **Check HTTPS:** Geolocation requires HTTPS in production
   ```bash
   # Verify SSL certificate
   openssl s_client -connect yourdomain.com:443 -servername yourdomain.com
   ```

2. **Browser Permissions:** Ensure location access is granted
   - Chrome: Settings → Privacy → Site Settings → Location
   - Firefox: Settings → Privacy & Security → Permissions → Location

3. **Device GPS:** Verify GPS is enabled on the device

4. **Check Logs:**
   ```javascript
   // Add to driver app console
   navigator.geolocation.getCurrentPosition(
       position => console.log('GPS OK:', position),
       error => console.error('GPS Error:', error)
   );
   ```

#### Database Connection Failed

**Problem:** "Could not connect to database" error

**Solutions:**
1. **Verify credentials:**
   ```bash
   mysql -u bus_user -p bus_tracking_db
   ```

2. **Check MySQL service:**
   ```bash
   sudo systemctl status mysql
   sudo systemctl start mysql
   ```

3. **Test connection:**
   ```php
   <?php
   $conn = new mysqli('localhost', 'bus_user', 'password', 'bus_tracking_db');
   if ($conn->connect_error) {
       die("Connection failed: " . $conn->connect_error);
   }
   echo "Connected successfully";
   ?>
   ```

#### Location Updates Not Showing

**Problem:** Passenger app shows stale data

**Solutions:**
1. **Check active trips:**
   ```sql
   SELECT * FROM bus_trips WHERE trip_status = 'in_progress';
   ```

2. **Verify recent locations:**
   ```sql
   SELECT * FROM bus_locations 
   WHERE is_current_location = 1 
   ORDER BY timestamp DESC 
   LIMIT 5;
   ```

3. **Clear old locations:**
   ```sql
   UPDATE bus_locations SET is_current_location = 0 
   WHERE timestamp < DATE_SUB(NOW(), INTERVAL 1 HOUR);
   ```

4. **Check API response:**
   ```bash
   curl http://localhost/api/get_passenger_bus_data.php?route_id=1
   ```

#### High Server Load

**Problem:** Server becomes slow with multiple users

**Solutions:**
1. **Enable caching:**
   ```php
   // In API endpoints
   header('Cache-Control: max-age=5');
   ```

2. **Optimize database queries:**
   ```sql
   -- Add indexes
   CREATE INDEX idx_trip_current ON bus_locations(trip_id, is_current_location);
   
   -- Analyze slow queries
   SHOW PROCESSLIST;
   EXPLAIN SELECT * FROM bus_locations WHERE trip_id = 1;
   ```

3. **Implement connection pooling:**
   ```php
   // Use persistent connections
   $conn = new mysqli('p:'.DB_HOST, DB_USER, DB_PASS, DB_NAME);
   ```

4. **Clean old data regularly:**
   ```bash
   # Add to cron
   0 3 * * * mysql -u root -p -e "DELETE FROM bus_locations WHERE timestamp < DATE_SUB(NOW(), INTERVAL 7 DAY);"
   ```

#### Map Not Loading

**Problem:** Blank map or tiles not loading

**Solutions:**
1. **Check internet connection**

2. **Verify tile server URL:**
   ```javascript
   // In map configuration
   L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
       attribution: '© OpenStreetMap contributors',
       maxZoom: 19
   }).addTo(map);
   ```

3. **Try alternative tile servers:**
   ```javascript
   // CartoDB
   'https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png'
   
   // Mapbox (requires API key)
   'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}'
   ```

4. **Check browser console for errors**

### Debug Mode

Enable debug mode temporarily:

```php
// In config/database.php
define('DEBUG_MODE', true);

// This will log all SQL queries
if (DEBUG_MODE) {
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    
    // Log queries
    $GLOBALS['query_log'] = [];
    register_shutdown_function(function() {
        file_put_contents('logs/queries.log', 
            json_encode($GLOBALS['query_log'], JSON_PRETTY_PRINT), 
            FILE_APPEND
        );
    });
}
```

### Log Analysis

```bash
# View application logs
tail -f logs/app.log

# View Apache error logs
tail -f /var/log/apache2/error.log

# View MySQL slow query log
tail -f /var/log/mysql/slow-query.log

# Search for specific errors
grep "ERROR" logs/app.log | tail -20
```

---

## 🤝 Contributing

We welcome contributions from the community! Whether you're fixing bugs, adding features, or improving documentation, your help is appreciated.

### How to Contribute

1. **Fork the Repository**
   ```bash
   # Fork on GitHub, then clone your fork
   git clone https://github.com/YOUR_USERNAME/village-bus-tracker.git
   cd village-bus-tracker
   ```

2. **Create a Feature Branch**
   ```bash
   git checkout -b feature/your-feature-name
   # or
   git checkout -b bugfix/issue-description
   ```

3. **Make Your Changes**
   - Write clean, documented code
   - Follow existing code style
   - Add comments for complex logic
   - Update documentation if needed

4. **Test Your Changes**
   ```bash
   # Test manually
   # Run any automated tests if available
   # Check for PHP errors
   php -l your-file.php
   ```

5. **Commit Your Changes**
   ```bash
   git add .
   git commit -m "feat: add new feature description"
   # or
   git commit -m "fix: resolve issue with location tracking"
   ```

6. **Push to Your Fork**
   ```bash
   git push origin feature/your-feature-name
   ```

7. **Create Pull Request**
   - Go to the original repository on GitHub
   - Click "New Pull Request"
   - Select your branch
   - Describe your changes clearly
   - Reference any related issues

### Commit Message Convention

Follow these formats:

- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation changes
- `style:` Code style changes (formatting)
- `refactor:` Code refactoring
- `test:` Adding or updating tests
- `chore:` Maintenance tasks

Examples:
```bash
git commit -m "feat: add SMS notification support"
git commit -m "fix: resolve GPS accuracy issue in driver app"
git commit -m "docs: update installation instructions"
```

### Code Style Guidelines

#### PHP
```php
<?php
// Use descriptive variable names
$currentLocation = getCurrentBusLocation($tripId);

// Add comments for complex logic
// Calculate distance using Haversine formula
$distance = calculateDistance($lat1, $lon1, $lat2, $lon2);

// Use type hints when possible
function updateLocation(int $tripId, float $lat, float $lng): bool {
    // Implementation
}

// Consistent formatting
if ($condition) {
    // Code here
} else {
    // Code here
}
?>
```

#### JavaScript
```javascript
// Use const/let instead of var
const updateInterval = 5000;
let busLocation = null;

// Clear function names
function updateBusMarker(latitude, longitude) {
    // Implementation
}

// Add JSDoc comments
/**
 * Calculate ETA to next stop
 * @param {number} distance - Distance in kilometers
 * @param {number} speed - Current speed in km/h
 * @returns {number} ETA in minutes
 */
function calculateETA(distance, speed) {
    return (distance / speed) * 60;
}
```

### Testing Guidelines

Before submitting:

1. **Manual Testing:**
   - Test on multiple browsers
   - Test on mobile devices
   - Verify all features work as expected

2. **Code Review Checklist:**
   - [ ] Code follows project style
   - [ ] No console.log or debug code left
   - [ ] Database queries are secure (prepared statements)
   - [ ] Error handling is implemented
   - [ ] Comments explain complex logic
   - [ ] Documentation is updated

3. **Security Checks:**
   - [ ] SQL injection prevention
   - [ ] XSS protection
   - [ ] CSRF tokens where needed
   - [ ] Input validation
   - [ ] Output sanitization

### Reporting Bugs

Use GitHub Issues with this template:

```markdown
**Bug Description**
Clear description of the bug

**Steps to Reproduce**
1. Go to '...'
2. Click on '...'
3. See error

**Expected Behavior**
What should happen

**Actual Behavior**
What actually happens

**Screenshots**
If applicable

**Environment**
- Browser: Chrome 90
- OS: Windows 10
- PHP Version: 7.4
- MySQL Version: 8.0

**Additional Context**
Any other relevant information
```

### Feature Requests

Submit feature requests with:

```markdown
**Feature Description**
Clear description of the proposed feature

**Use Case**
Who will benefit and how

**Proposed Solution**
How you think it should work

**Alternatives Considered**
Other approaches you've thought about

**Additional Context**
Mockups, examples, etc.
```

### Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Accept constructive criticism
- Focus on what's best for the community
- Show empathy towards others

---

## 🗺️ Roadmap

### Version 2.0 (Q1 2026)

- [ ] **Push Notifications**
  - Real-time alerts for approaching buses
  - Customizable notification preferences
  - Web Push API integration

- [ ] **Multi-Route Support**
  - Track multiple buses simultaneously
  - Route comparison features
  - Alternative route suggestions

- [ ] **Offline Mode**
  - Service Worker implementation
  - Offline data caching
  - Background sync

### Version 2.5 (Q2 2026)

- [ ] **Native Mobile Apps**
  - iOS app (Swift)
  - Android app (Kotlin)
  - React Native alternative

- [ ] **Advanced Analytics**
  - Passenger demand heatmaps
  - Route optimization suggestions
  - Peak hour analysis
  - Driver performance metrics

- [ ] **Payment Integration**
  - Digital ticketing
  - Mobile payment options
  - Monthly pass management

### Version 3.0 (Q3 2026)

- [ ] **AI/ML Features**
  - Predictive ETA using machine learning
  - Traffic pattern analysis
  - Demand forecasting
  - Route optimization algorithms

- [ ] **Social Features**
  - Passenger reviews and ratings
  - Community feedback
  - Crowdsourced bus condition reports

- [ ] **Integration APIs**
  - Third-party app integration
  - Google Maps integration
  - Weather data integration
  - Traffic data integration

### Long-term Vision

- [ ] **Smart City Integration**
  - Integration with city transport systems
  - Traffic light optimization
  - Multi-modal transport support

- [ ] **Accessibility Features**
  - Voice navigation
  - Screen reader support
  - High contrast mode
  - Multiple language support

- [ ] **Environmental Tracking**
  - Carbon footprint calculator
  - Route efficiency metrics
  - Eco-friendly route suggestions

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

### MIT License Summary

```
Copyright (c) 2025 Village Bus Tracker Project

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

**What this means:**
- ✅ Commercial use allowed
- ✅ Modification allowed
- ✅ Distribution allowed
- ✅ Private use allowed
- ⚠️ Liability and warranty are limited

---

## 👥 Authors & Contributors

### Core Team

- **Rohan Ekanayake** - *Project Creator & Lead Developer* - [@earsekanayake](https://github.com/speedsri)

### Contributors

We thank the following people who have contributed to this project:

<!-- Add contributors here -->
- **Contributor Name** - Feature implementation - [@username](https://github.com/username)

See also the list of [contributors](https://github.com/yourusername/village-bus-tracker/contributors) who participated in this project.

---

## 🙏 Acknowledgments

- **Leaflet.js** - For providing excellent mapping library
- **OpenStreetMap** - For free map tiles and data
- **PHP Community** - For robust backend framework
- **MySQL** - For reliable database system
- **All Contributors** - For making this project better

### Inspired By

- The need for better rural public transportation
- Community-driven development principles
- Open-source collaboration

---

## 📞 Support

### Getting Help

- **Documentation**: [Wiki](https://github.com/yourusername/village-bus-tracker/wiki)
- **Issues**: [GitHub Issues](https://github.com/yourusername/village-bus-tracker/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/village-bus-tracker/discussions)

### Contact

- **Email**: support@bustracker.com
- **Website**: https://bustracker.com
- **Twitter**: [@BusTrackerApp](https://twitter.com/BusTrackerApp)

### Community

Join our community:
- **Discord**: [Join Server](https://discord.gg/yourlink)
- **Telegram**: [Join Group](https://t.me/yourgroup)
- **Forum**: [Community Forum](https://forum.bustracker.com)

---

## 📊 Project Stats

![GitHub stars](https://img.shields.io/github/stars/yourusername/village-bus-tracker?style=social)
![GitHub forks](https://img.shields.io/github/forks/yourusername/village-bus-tracker?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/yourusername/village-bus-tracker?style=social)
![GitHub issues](https://img.shields.io/github/issues/yourusername/village-bus-tracker)
![GitHub pull requests](https://img.shields.io/github/issues-pr/yourusername/village-bus-tracker)
![GitHub last commit](https://img.shields.io/github/last-commit/yourusername/village-bus-tracker)
![GitHub repo size](https://img.shields.io/github/repo-size/yourusername/village-bus-tracker)

---

## 🌟 Star History

[![Star History Chart](https://api.star-history.com/svg?repos=yourusername/village-bus-tracker&type=Date)](https://star-history.com/#yourusername/village-bus-tracker&Date)

---

## 📱 Quick Links

- [Live Demo](https://demo.bustracker.com) - Try the system live
- [Documentation](https://docs.bustracker.com) - Comprehensive guides
- [API Reference](https://api.bustracker.com) - Developer documentation
- [Changelog](CHANGELOG.md) - Version history
- [Contributing Guide](CONTRIBUTING.md) - How to contribute
- [Code of Conduct](CODE_OF_CONDUCT.md) - Community guidelines

---

<div align="center">

## ⭐ Show Your Support

If this project helped you, please give it a ⭐️!

**Made with ❤️ for better public transportation in rural communities**

[Report Bug](https://github.com/yourusername/village-bus-tracker/issues) · [Request Feature](https://github.com/yourusername/village-bus-tracker/issues) · [Documentation](https://github.com/yourusername/village-bus-tracker/wiki)

---

**© 2025 Village Bus Tracker | Licensed under MIT**

</div>
