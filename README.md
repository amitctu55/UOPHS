# Upchar - Healthcare Management System

## Overview
Upchar is a healthcare management system built with PHP and CodeIgniter framework.

## Requirements
- PHP 8.0+
- MySQL 5.7+
- Apache/Nginx web server
- Composer (for dependency management)

## Quick Start with Docker

### Using Docker Compose (Recommended)
1. Copy the example database configuration files:
   ```bash
   cp application/config/database.php.example application/config/database.php
   cp application/config/testing/database.php.example application/config/testing/database.php
   ```

2. Edit the database configuration files to add your MySQL credentials:
   - Update `username` and `password` in both files

3. Start the application:
   ```bash
   docker-compose up -d
   ```

4. Access the application at: http://localhost:8080

### Manual Installation
1. Ensure your web server points to the project root directory
2. Copy and configure database files as shown above
3. Ensure writable permissions for:
   - application/cache/
   - application/logs/
   - temp2/
   - application/views_12jandemo/application/cache/
   - application/views_12jandemo/application/logs/

## GitHub Actions CI/CD
This repository includes a GitHub Actions workflow (`.github/workflows/ci.yml`) that:
- Runs on every push and pull request to master
- Sets up PHP 8.2 with required extensions
- Installs dependencies via Composer
- Validates PHP syntax
- Tests database connectivity
- Runs in an environment with MySQL service

## Environment Configuration
The application uses CodeIgniter's environment feature:
- Set `ENVIRONMENT` in `index.php`:
  - `development`: Shows all errors
  - `testing`: Hides errors (used in Docker)
  - `production`: Hides errors

## Security Notes
- Never commit real database credentials to version control
- The `.gitignore` file is configured to exclude:
  - Database configuration files with credentials
  - Log files and cache directories
  - Temporary files and IDE artifacts
  - Upload directories and vendor dependencies

## Project Structure
- `application/`: Main application code (CodeIgniter)
- `application/config/`: Configuration files
- `application/controllers/`: Application controllers
- `application/views/`: Application views
- `application/models/`: Application models
- `system/`: CodeIgniter core files
- `assets/`: Static assets (CSS, JS, images)

## License
This project is licensed under the MIT License.