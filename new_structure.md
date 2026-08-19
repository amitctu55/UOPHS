# Project Structure Documentation - UPCHAR Healthcare Platform

## 1. Root Directory Structure

```
/workspace/
├── index.php                          # Main entry point (CodeIgniter bootstrap)
├── .htaccess                          # Apache rewrite rules
├── home.php                           # Legacy home page
├── survey.php                         # Survey page
├── error_log                          # Server error logs
│
├── application/                       # Main application directory (CodeIgniter)
│   ├── config/                        # Configuration files
│   ├── controllers/                   # Request handlers
│   ├── core/                          # Extended CodeIgniter classes
│   ├── helpers/                       # Helper functions
│   ├── hooks/                         # Hook definitions
│   ├── language/                      # Language files
│   ├── libraries/                     # Custom libraries
│   ├── logs/                          # Application logs
│   ├── models/                        # Data models
│   ├── third_party/                   # Third-party libraries
│   └── views/                         # View templates
│
├── system/                            # CodeIgniter framework core
│   ├── core/                          # Framework core classes
│   ├── database/                      # Database drivers
│   ├── helpers/                       # Framework helpers
│   ├── language/                      # Framework language files
│   ├── libraries/                     # Framework libraries
│   └── ...
│
├── assets/                            # Static assets (CSS, JS, images)
├── css/                               # Global CSS files
├── fonts/                             # Font files
├── images/                            # Global images
├── extra-images/                      # Additional images
│
├── admin1947/                         # Admin panel (separate CodeIgniter app)
├── apex/                              # Alternative hospital management system
├── hospital/                          # Hospital-specific module
├── payment/                           # Payment processing module
├── mail/                              # Email handling
├── phpmailer/                         # PHPMailer library
├── script/                            # JavaScript files
├── webservices/                       # REST API endpoints
├── temp2/                             # Temporary/development files
└── old_index/                         # Archived index pages
```

## 2. Application Directory Structure

### 2.1 Config Directory (`application/config/`)

```
application/config/
├── config.php                         # Main configuration
├── database.php                       # Database connections
├── routes.php                         # URL routing rules
├── autoload.php                       # Auto-loading settings
├── constants.php                      # Application constants
├── doctypes.php                       # HTML doctype definitions
├── foreign_chars.php                  # Foreign character conversion
├── hooks.php                          # Hook configurations
├── mimes.php                          # MIME type definitions
├── profiler.php                       # Profiler settings
├── user_agents.php                    # User agent strings
├── access.php                         # Access control settings
├── facebook.php                       # Facebook API config
├── linkedin.php                       # LinkedIn API config
└── reportico.php                      # Reportico reporting config
```

### 2.2 Controllers Directory (`application/controllers/`)

```
application/controllers/
├── Home.php                           # Public-facing pages
├── User.php                           # User management
├── Doctorpanel.php                    # Doctor dashboard & operations
├── Doctoruser.php                     # Doctor public profile
├── Hospitalpanel.php                  # Hospital dashboard & operations
├── Hospitaluser.php                   # Hospital public profile
├── Pathlabpanel.php                   # Pathology lab dashboard
├── Pathlabuser.php                    # Pathology lab public profile
├── Medicalpanel.php                   # Medical store dashboard
├── Medicaluser.php                    # Medical store public profile
├── Pathdoctorpanel.php                # Pathologist doctor panel
├── Pathdoctoruser.php                 # Pathologist doctor public
├── Paysecure.php                      # Payment processing
├── Fbauth.php                         # Facebook authentication
├── Google.php                         # Google authentication
├── Linkedin.php                       # LinkedIn authentication
├── Webservicesci.php                  # General web services
├── Webservicescidoc.php               # Doctor-specific APIs
├── Webservicescihosp.php              # Hospital-specific APIs
├── Webservicescipath.php              # Pathlab-specific APIs
├── Webservicescichem.php              # Chemist-specific APIs
├── Dummy.php                          # Testing/dummy controller
├── partial.php                        # Partial view rendering
└── runner.php                         # Background job runner
```

### 2.3 Models Directory (`application/models/`)

```
application/models/
├── User_Model.php                     # User business logic
├── Userlogin_Model.php                # User authentication
├── Doctor_Model.php                   # Doctor operations
├── Doctoruser_Model.php               # Doctor public data
├── Hospital_Model.php                 # Hospital operations
├── Hospitaluser_Model.php             # Hospital public data
├── Pathlab_Model.php                  # Pathology lab operations
├── Pathuser_Model.php                 # Pathology user operations
├── Pathdoctor_Model.php               # Pathologist doctor operations
├── Pathdoctoruser_Model.php           # Pathologist public data
├── Medical_Model.php                  # Medical store operations
├── Medicaluser_Model.php              # Medical store public data
├── Chemistuser_Model.php              # Chemist operations
├── Cart_Model.php                     # Shopping cart
└── Socialmodel.php                    # Social media integration
```

### 2.4 Views Directory (`application/views/`)

```
application/views/
├── home.php                           # Home page (logged in)
├── home1.php                          # Home page (guest)
├── login.php                          # User login
├── sign_up.php                        # User registration
├── forgot_password.php                # Password recovery
├── otp_send_pass.php                  # OTP verification
├── profile.php                        # User profile
├── updateprofile.php                  # Profile update
├── aboutus.php                        # About us page
├── contact-us.php                     # Contact form
├── privacy.php                        # Privacy policy
├── tnc.php                            # Terms and conditions
├── refund_cancellation.php            # Refund policy
├── detail_page.php                    # Doctor detail view
├── hospital_detail.php                # Hospital detail view
├── team_list.php                      # Doctor listing
├── hospital_list.php                  # Hospital listing
├── manageappointment.php              # Appointment management
├── mytest.php                         # User test history
├── patienthistory1.php                # Patient medical history
│
├── doctorpanel/                       # Doctor portal views
│   ├── login.php
│   ├── sign_up.php
│   ├── dashboard.php
│   ├── aindex.php                     # Admin index
│   ├── milestone.php                  # Profile completion steps
│   ├── profile_step1.php - step6.php  # Multi-step profile
│   ├── profile_about.php
│   ├── profile_drpic.php              # Profile picture upload
│   ├── profile_idproof.php            # ID proof upload
│   ├── mci_proof.php                  # Medical council proof
│   ├── profile_regproof.php           # Registration proof
│   ├── addclinic.php                  # Add clinic
│   ├── addpractice.php                # Add practice location
│   ├── managepractice.php             # Manage practices
│   ├── manageownclinic.php            # Manage own clinics
│   ├── managedoctor.php               # Manage associated doctors
│   ├── manageappointment.php          # Manage appointments
│   ├── clinic_sugestion.php           # Clinic suggestions
│   ├── practice_sugestion.php         # Practice suggestions
│   ├── profile_clinic_timing.php      # Clinic timing setup
│   ├── profile_clinicproof.php        # Clinic proof upload
│   ├── profile_maplocation.php        # Map location setup
│   ├── profile_consultant_fee.php     # Fee configuration
│   ├── gallery.php                    # Gallery management
│   ├── change_password.php
│   └── forgot_password.php
│
├── hospitalpanel/                     # Hospital portal views
│   ├── login.php
│   ├── sign_up.php
│   ├── dashboard.php
│   ├── aindex.php
│   ├── adddoctor.php                  # Add doctor
│   ├── doctorlist.php                 # Doctor list
│   ├── doctor_detail.php              # Doctor details
│   ├── updatedoctor.php               # Update doctor
│   ├── manageappointment.php
│   ├── patienthistory.php
│   ├── patienthistory27.php
│   ├── biomedical.php                 # Biomedical waste
│   ├── milestone.php - milestone4.php
│   ├── profile_*.php                  # Various profile steps
│   └── report.php
│
├── pathlabpanel/                      # Pathlab portal views
│   ├── login.php
│   ├── sign_up.php
│   ├── dashboard.php
│   ├── adddoctor.php
│   ├── doctorlist.php
│   ├── manageappointment.php
│   ├── profile_*.php
│   └── report.php
│
├── medicalpanel/                      # Medical store portal views
│   ├── login.php
│   ├── sign_up.php
│   ├── dashboard.php
│   ├── profile.php
│   ├── manageprofile.php
│   ├── addmadicine.php                # Add medicine
│   ├── penddingorder.php              # Pending orders
│   ├── onlinepayment.php
│   ├── paymentreport.php
│   ├── patientreport.php
│   ├── chemistreport.php
│   └── uploadproof.php
│
├── pathdoctorpanel/                   # Pathologist doctor views
│   ├── login.php
│   ├── sign_up.php
│   ├── dashboard.php
│   └── [similar to doctorpanel]
│
├── includes/                          # Reusable components
│   ├── header.php
│   ├── footer.php
│   ├── sidebar.php
│   └── navigation menus
│
├── static/                            # Static content pages
├── media/                             # Media-related views
├── secure/                            # Secure payment pages
├── errors/                            # Error pages
└── pathology/                         # Pathology-specific views
```

### 2.5 Libraries Directory (`application/libraries/`)

```
application/libraries/
├── Azad_lib.php                       # Custom utility library
├── Csvimport.php                      # CSV import functionality
├── Excel.php                          # Excel file handling
├── Reportico.php                      # Reporting engine
├── Facebook.php                       # Facebook SDK wrapper
├── facebook-php-sdk/                  # Facebook SDK
├── google-api-php-client/             # Google API client
└── linkedinoauth/                     # LinkedIn OAuth
```

### 2.6 Helpers Directory (`application/helpers/`)

```
application/helpers/
├── custom_helper.php                  # Custom helper functions
├── check_helper.php                   # Validation helpers
└── fddi_helper.php                    # Utility functions
```

### 2.7 Third Party Directory (`application/third_party/`)

```
application/third_party/
├── PHPExcel/                          # PHPExcel library
├── PHPExcel.php                       # PHPExcel autoloader
└── demPHPExcel/                       # PHPExcel demos
```

## 3. Web Services Structure

### 3.1 Webservices Directory (`webservices/`)

```
webservices/
├── api.php                            # Main API router
├── basic_class.php                    # Base API class with common methods
├── Rest.inc.php                       # REST framework base class
└── .htaccess                          # API access rules
```

**Key Methods in `basic_class.php`:**
- `login()` - User authentication
- `signup()` - User registration
- `verifymobile()` - Mobile verification
- `searchdoctor()` - Search doctors
- `searchhospital()` - Search hospitals
- `bookappointment()` - Book appointments
- `getappointment()` - Retrieve appointments
- `profile` methods - Profile management
- `sendotp()` - OTP generation and sending
- `sendsms()` - SMS gateway integration
- File upload utilities
- Image resize utilities
- Database CRUD helpers

## 4. Admin Panel Structure

### 4.1 Admin Directory (`admin1947/`)

```
admin1947/
├── application/                       # Separate CodeIgniter app
│   ├── config/
│   ├── controllers/
│   │   ├── Welcome.php                # Admin dashboard
│   │   ├── Users.php                  # User management
│   │   ├── Doctors.php                # Doctor management
│   │   ├── Hospitals.php              # Hospital management
│   │   ├── Pathlabs.php               # Pathlab management
│   │   ├── Medicals.php               # Medical store management
│   │   ├── Appointments.php           # Appointment oversight
│   │   ├── Reports.php                # Admin reports
│   │   └── Settings.php               # System settings
│   ├── models/
│   ├── views/
│   └── ...
├── public/
│   └── assets/upload/                 # Uploaded files storage
└── ...
```

## 5. Alternative Systems

### 5.1 APEX Hospital Management (`apex/`)

```
apex/
├── hmsproject/                        # Hospital Management System
│   ├── sqlfile/
│   │   └── hms.sql                    # Database schema
│   └── [HMS implementation]
└── hospital/                          # Hospital module
```

### 5.2 Temporary Development (`temp2/`)

```
temp2/
├── myadmin2/                          # phpMyAdmin installation
└── [Development files]
```

## 6. Asset Structure

### 6.1 Assets Directory (`assets/`)

```
assets/
├── css/                               # Stylesheets
├── js/                                # JavaScript files
├── images/                            # Images
└── fonts/                             # Custom fonts
```

### 6.2 Global CSS (`css/`)

```
css/
├── style.css                          # Main stylesheet (135KB)
├── style_home.css                     # Home page styles (80KB)
├── media.css                          # Media queries (7KB)
└── [Other CSS files]
```

## 7. Key Files Analysis

### 7.1 Entry Points

| File | Purpose | Size |
|------|---------|------|
| `index.php` | CodeIgniter bootstrap | 10KB |
| `home.php` | Legacy home page | 75KB |
| `survey.php` | Survey form | 6KB |
| `tc.html` | Terms & Conditions | 80KB |
| `upchar.html` | Landing page | 53KB |

### 7.2 Controller Complexity

| Controller | Lines | Responsibility |
|------------|-------|----------------|
| `Paysecure.php` | ~1500+ | Payment processing |
| `Webservicescihosp.php` | ~1200+ | Hospital APIs |
| `Webservicescidoc.php` | ~800+ | Doctor APIs |
| `Hospitalpanel.php` | ~900+ | Hospital panel |
| `Doctorpanel.php` | ~700+ | Doctor panel |
| `Home.php` | ~700+ | Public pages |
| `Webservicesci.php` | ~700+ | General APIs |

### 7.3 Model Complexity

| Model | Lines | Responsibility |
|-------|-------|----------------|
| `Hospital_Model.php` | ~500+ | Hospital operations |
| `Doctor_Model.php` | ~500+ | Doctor operations |
| `User_Model.php` | ~300+ | User operations |
| `Pathlab_Model.php` | ~200+ | Pathlab operations |

## 8. Routing Configuration

### 8.1 Public Routes

```php
$route['default_controller'] = 'home';
$route['login'] = 'home/login';
$route['signup'] = 'home/signup';
$route['forgotpassword'] = 'home/forgotpassword';
$route['doctors'] = 'home/doctors';
$route['doctor/:any'] = 'home/doctor/$1';
$route['hospitallist'] = 'home/hospitallist';
$route['hospital/:any'] = 'home/hospital/$1';
$route['search'] = 'home/search';
$route['aboutus'] = 'home/aboutus';
$route['privacy'] = 'home/privacy';
```

### 8.2 Doctor Routes

```php
$route['doctor-login'] = 'doctorpanel/login';
$route['doctor-signup'] = 'doctorpanel/signup';
$route['doctor-dashboard'] = 'doctorpanel/dashboard';
$route['profile_step1'] = 'doctorpanel/profile_step1';
$route['managepractice'] = 'doctorpanel/managepractice';
$route['manageappointment'] = 'doctorpanel/manageappointment';
```

### 8.3 Hospital Routes

```php
$route['hospital-login'] = 'hospitalpanel/login';
$route['hospital-signup'] = 'hospitalpanel/signup';
$route['hospital-dashboard'] = 'hospitalpanel/dashboard';
$route['patient/:any'] = 'hospitalpanel/patient/$1';
```

### 8.4 Pathlab Routes

```php
$route['pathlab-login'] = 'pathlabpanel/login';
$route['pathlab-signup'] = 'pathlabpanel/signup';
$route['pathlab-dashboard'] = 'pathlabpanel/dashboard';
```

### 8.5 Medical Routes

```php
$route['medical-login'] = 'medicalpanel/login';
$route['medical-signup'] = 'medicalpanel/signup';
$route['medical-dashboard'] = 'medicalpanel/dashboard';
```

## 9. Database Configuration

### 9.1 Production Database

```php
// application/config/database.php
$active_group = 'default';
$db['default'] = array(
    'hostname' => 'localhost',
    'username' => 'root',
    'password' => '',
    'database' => 'upchar_live',
    'dbdriver' => 'mysqli',
    'db_debug' => TRUE,
    'char_set' => 'utf8',
    'dbcollat' => 'utf8_general_ci'
);
```

### 9.2 Local Development Database

```php
// webservices/basic_class.php
const DB_SERVER_L = "localhost";
const DB_USER_L = "root";
const DB_PASSWORD_L = "";
const DB_L = "sichermart";
```

## 10. File Upload Locations

### 10.1 Configured Upload Paths

```php
// Found in various models
$_SERVER['DOCUMENT_ROOT'].'/admin1947/public/assets/upload/'
```

**Upload Types:**
- Doctor profile pictures
- ID proofs
- Registration certificates
- Clinic proofs
- Hospital documents
- Medical store licenses
- Gallery images

## 11. Session Management

### 11.1 Session Variables Used

```php
// User sessions
$this->session->userdata('userid')
$this->session->userdata('druserid')      // Doctor
$this->session->userdata('hospuserid')    // Hospital
$this->session->userdata('pathuserid')    // Pathlab
$this->session->userdata('meduserid')     // Medical store

// Other session data
Flash messages: $this->session->set_flashdata('flashmsg', $msg)
```

## 12. Authentication Flow

### 12.1 User Types

1. **Regular Users (C)** - Consumers/Patients
2. **Doctors (D)** - Medical practitioners
3. **Hospitals (H)** - Healthcare institutions
4. **Pathlabs (P)** - Diagnostic centers
5. **Medical Stores (M)** - Pharmacies
6. **Pathologist Doctors** - Specialized doctors

### 12.2 Authentication Tables

- `userlogin` - Main authentication table
- `profile_dr` - Doctor profiles
- `hospital` - Hospital profiles
- `clinic` - Clinic profiles
- Device tokens: `user_device`

## 13. Security Implementation

### 13.1 Current Security Measures

- Session-based authentication
- MD5 password hashing (⚠️ WEAK)
- Basic input validation
- SQL escaping (inconsistent)
- File upload validation (basic)

### 13.2 Missing Security Features

- CSRF tokens
- XSS protection
- Rate limiting
- Audit logging
- Encrypted passwords
- Two-factor authentication
- API key management

## 14. Integration Points

### 14.1 Social Login

- Facebook OAuth
- Google OAuth
- LinkedIn OAuth

### 14.2 Payment Gateway

- Custom payment processing in `Paysecure.php`
- COD (Cash on Delivery) support
- Order tracking

### 14.3 SMS Gateway

- Custom SMS sending via `sendsms()` method
- OTP verification
- Notification alerts

### 14.4 Email

- PHPMailer integration
- Transactional emails
- Password reset

## 15. Performance Considerations

### 15.1 Caching

- Query caching: Disabled
- View caching: Not implemented
- Output caching: Not implemented

### 15.2 Database Optimization

- Indexes: Unknown (requires analysis)
- Query optimization: Minimal
- Connection pooling: Not configured

### 15.3 Asset Optimization

- CSS minification: No
- JavaScript minification: No
- Image optimization: Partial
- CDN: Not configured

## 16. Deployment Architecture

### 16.1 Current Setup

- Single server deployment
- Shared hosting environment
- Apache web server
- MySQL database
- PHP with CodeIgniter

### 16.2 Recommended Setup

- Load balancer
- Multiple application servers
- Database replication
- Redis/Memcached for caching
- CDN for static assets
- Separate file storage (S3)

## 17. Monitoring & Logging

### 17.1 Current Logging

- CodeIgniter log files (`application/logs/`)
- Server error logs (`error_log` in root)
- Web service error logs (`webservices/error_log`)

### 17.2 Missing Monitoring

- Application performance monitoring (APM)
- Error tracking (Sentry, Bugsnag)
- Uptime monitoring
- Log aggregation
- Real-time alerts

## 18. Development Workflow

### 18.1 Version Control

- Git repository present
- Multiple development branches visible
- Archive directories suggest poor cleanup

### 18.2 Environment Management

- Environment constant defined but not fully utilized
- Mixed development/production code
- Hardcoded paths throughout

### 18.3 Testing

- No visible test suite
- No CI/CD pipeline
- Manual testing only

## 19. Recommendations for Restructuring

### 19.1 Immediate Actions

1. Consolidate duplicate code
2. Remove archive/temporary directories
3. Standardize file naming conventions
4. Implement proper error handling
5. Set up automated backups

### 19.2 Short-term Improvements

1. Create service layer
2. Implement repository pattern
3. Add API documentation
4. Set up staging environment
5. Implement proper logging

### 19.3 Long-term Modernization

1. Migrate to modern framework
2. Implement microservices
3. Add comprehensive test suite
4. Set up CI/CD pipeline
5. Containerize with Docker

---

**Document Version:** 1.0  
**Last Updated:** 2024  
**Maintained By:** Development Team
