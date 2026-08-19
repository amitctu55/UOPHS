# Product Requirements Document (PRD) - UPCHARR Healthcare Platform

## 1. Executive Summary

**Project Name:** UPCHARR - Comprehensive Healthcare Management Platform  
**Framework:** CodeIgniter 3.x (PHP)  
**Database:** MySQL  
**Architecture:** MVC (Model-View-Controller) with HMVC patterns  
**Status:** Legacy System - Requires Modernization

## 2. Product Overview

UPCHARR is a multi-stakeholder healthcare platform that connects patients with healthcare providers including doctors, hospitals, pathlabs, and medical stores. The platform provides appointment booking, patient history management, telemedicine capabilities, and e-commerce functionality for medicines.

### 2.1 Vision Statement
To create a unified digital healthcare ecosystem that simplifies healthcare access for patients while providing powerful management tools for healthcare providers.

### 2.2 Target Users
1. **Patients/Consumers** - End users seeking healthcare services
2. **Doctors** - Individual practitioners and visiting consultants
3. **Hospitals/Clinics** - Healthcare institutions
4. **Pathology Labs** - Diagnostic service providers
5. **Medical Stores/Pharmacies** - Medicine retailers
6. **Administrators** - Platform managers

## 3. Current System Architecture

### 3.1 Technology Stack
- **Backend:** PHP 5.6+/7.x with CodeIgniter 3.x Framework
- **Database:** MySQL with mysqli driver
- **Frontend:** HTML, CSS, JavaScript (jQuery)
- **APIs:** RESTful web services
- **Authentication:** Session-based with MD5 password hashing (legacy)
- **Third-party Integrations:** Facebook, Google, LinkedIn OAuth

### 3.2 Core Modules

#### 3.2.1 User Management
- Consumer registration and authentication
- Social login integration (Facebook, Google, LinkedIn)
- Profile management with verification
- OTP-based mobile verification

#### 3.2.2 Doctor Module
**Controllers:** `Doctorpanel.php`, `Doctoruser.php`, `Webservicescidoc.php`
**Models:** `Doctor_Model.php`, `Doctoruser_Model.php`
**Features:**
- Multi-step profile creation (6 steps)
- Specialization and qualification management
- Clinic/hospital practice association
- Appointment management
- Patient history access
- Fee and timing configuration
- Document upload (ID proof, registration certificate, profile picture)

#### 3.2.3 Hospital Module
**Controllers:** `Hospitalpanel.php`, `Hospitaluser.php`, `Webservicescihosp.php`
**Models:** `Hospital_Model.php`, `Hospitaluser_Model.php`
**Features:**
- Hospital profile management
- Doctor association (visiting consultants)
- Appointment tracking
- Patient history management
- Department and specialization setup
- Biomedical waste management compliance

#### 3.2.4 Pathlab Module
**Controllers:** `Pathlabpanel.php`, `Pathlabuser.php`, `Webservicescipath.php`
**Models:** `Pathlab_Model.php`, `Pathuser_Model.php`
**Features:**
- Lab profile management
- Test catalog management
- Sample collection scheduling
- Report generation and delivery
- Doctor referral tracking

#### 3.2.5 Medical Store Module
**Controllers:** `Medicalpanel.php`, `Medicaluser.php`, `Webservicescichem.php`
**Models:** `Medical_Model.php`, `Medicaluser_Model.php`
**Features:**
- Medicine inventory management
- Prescription upload and validation
- Order processing
- Home delivery coordination

#### 3.2.6 Payment Module
**Controller:** `Paysecure.php`
**Features:**
- Online payment processing
- COD (Cash on Delivery) support
- Payment reconciliation
- Refund management

#### 3.2.7 Web Services API
**Files:** `webservices/basic_class.php`, `webservices/api.php`
**Endpoints:**
- User authentication (login/signup)
- Search functionality (doctors, hospitals, labs)
- Appointment booking
- Profile management
- Order management

## 4. Database Schema (Inferred)

### 4.1 Core Tables
- `userlogin` - User credentials and basic info
- `profile_dr` - Doctor profiles
- `hospital` - Hospital profiles
- `clinic` - Clinic details
- `dr_practice` - Doctor-practice associations
- `appointment` - Appointment bookings
- `master_specialization` - Medical specializations
- `master_city` - City master data
- `gallery` - Image galleries
- `user_device` - Push notification tokens

### 4.2 Relationship Tables
- `dr_specialization` - Doctor specializations mapping
- `dr_qualifications` - Doctor qualifications mapping
- `doctorgallery` - Doctor images
- `hospitalgallery` - Hospital images

## 5. Current Features Inventory

### 5.1 Implemented Features ✓

#### Patient Features
- [x] User registration with OTP verification
- [x] Social login (Facebook, Google, LinkedIn)
- [x] Search doctors by specialization/location
- [x] Search hospitals and clinics
- [x] View doctor/hospital profiles
- [x] Book appointments
- [x] View appointment history
- [x] Access patient history
- [x] Online payment integration
- [x] Profile management

#### Doctor Features
- [x] Registration and login
- [x] Multi-step profile setup
- [x] Manage specializations
- [x] Add clinic/hospital practices
- [x] Set consultation fees
- [x] Define availability timings
- [x] Manage appointments
- [x] View patient history
- [x] Upload documents
- [x] Profile completion tracking

#### Hospital Features
- [x] Hospital registration
- [x] Add managing doctors
- [x] Associate visiting consultants
- [x] Manage departments
- [x] Track appointments
- [x] Patient history access
- [x] Gallery management

#### Pathlab Features
- [x] Lab registration
- [x] Doctor network management
- [x] Appointment tracking
- [x] Report management

#### Medical Store Features
- [x] Store registration
- [x] Medicine catalog
- [x] Order management
- [x] Prescription handling

#### Admin Features
- [x] User approval workflow
- [x] Provider verification
- [x] Content moderation
- [x] Report generation

### 5.2 Partially Implemented Features ⚠️

- [⚠️] Telemedicine/video consultation (infrastructure exists but incomplete)
- [⚠️] Push notifications (device token storage implemented, sending logic incomplete)
- [⚠️] Advanced search filters (basic search works, advanced filtering limited)
- [⚠️] E-prescription generation (template exists, full workflow incomplete)
- [⚠️] Inventory management for medical stores (basic CRUD only)
- [⚠️] Analytics dashboard (basic counts available, no advanced analytics)

### 5.3 Missing Features ✗

- [ ] Mobile applications (iOS/Android)
- [ ] Real-time chat between patients and providers
- [ ] AI-powered symptom checker
- [ ] Health records blockchain integration
- [ ] Insurance claim processing
- [ ] Multi-language support
- [ ] Advanced reporting and business intelligence
- [ ] Automated SMS/email reminders
- [ ] Queue management system
- [ ] E-prescription with drug interaction checking
- [ ] Integration with diagnostic equipment
- [ ] Inventory forecasting for pharmacies
- [ ] Patient feedback and rating system (complete workflow)
- [ ] Subscription plans for premium features
- [ ] API documentation for third-party integrations
- [ ] Two-factor authentication
- [ ] GDPR/HIPAA compliance features
- [ ] Data export functionality
- [ ] Backup and disaster recovery automation

## 6. Technical Debt & Issues

### 6.1 Security Concerns 🔴 CRITICAL
- [ ] **MD5 password hashing** - Must upgrade to bcrypt/Argon2
- [ ] **SQL Injection vulnerabilities** - Raw queries throughout codebase
- [ ] **XSS vulnerabilities** - Insufficient input sanitization
- [ ] **CSRF protection** - Not consistently implemented
- [ ] **File upload security** - Inadequate validation
- [ ] **Session security** - Basic session handling
- [ ] **No rate limiting** - API endpoints vulnerable to abuse
- [ ] **Sensitive data exposure** - Error logs contain sensitive information

### 6.2 Code Quality Issues 🟡 HIGH
- [ ] Inconsistent coding standards
- [ ] Mixed PHP syntax (procedural and OOP)
- [ ] No unit tests
- [ ] No integration tests
- [ ] Code duplication across controllers
- [ ] Large controller methods (God classes)
- [ ] Magic numbers throughout codebase
- [ ] Hardcoded paths and configurations
- [ ] Inconsistent error handling
- [ ] No logging framework

### 6.3 Performance Issues 🟡 MEDIUM
- [ ] No query optimization
- [ ] Missing database indexes
- [ ] No caching strategy
- [ ] N+1 query problems
- [ ] Large result sets without pagination
- [ ] No CDN integration
- [ ] Synchronous email/SMS sending
- [ ] No queue system for background jobs

### 6.4 Architecture Issues 🟡 MEDIUM
- [ ] Tight coupling between modules
- [ ] No service layer abstraction
- [ ] Business logic in controllers
- [ ] No repository pattern
- [ ] No dependency injection
- [ ] Monolithic architecture
- [ ] No API versioning
- [ ] No microservices readiness

## 7. Compliance & Regulatory Requirements

### 7.1 Healthcare Compliance
- [ ] HIPAA compliance (for US operations)
- [ ] GDPR compliance (for EU operations)
- [ ] DICOM standards for medical imaging
- [ ] HL7/FHIR for health data exchange
- [ ] Local healthcare regulations (India-specific)

### 7.2 Data Privacy
- [ ] Patient consent management
- [ ] Data minimization
- [ ] Right to be forgotten
- [ ] Data portability
- [ ] Privacy by design

### 7.3 Security Standards
- [ ] ISO 27001 certification
- [ ] SOC 2 Type II compliance
- [ ] PCI DSS for payment processing
- [ ] Regular security audits
- [ ] Penetration testing

## 8. Scalability Requirements

### 8.1 Current Capacity
- Estimated concurrent users: Unknown (requires monitoring)
- Database size: Unknown (requires analysis)
- API calls per day: Unknown (requires logging)

### 8.2 Target Capacity
- Support 100,000+ concurrent users
- Handle 1M+ API calls per day
- Sub-second response times
- 99.9% uptime SLA

### 8.3 Scalability Challenges
- Single database bottleneck
- No horizontal scaling strategy
- Session storage limitations
- File storage scalability
- No load balancing

## 9. Integration Requirements

### 9.1 Third-party Services
- [ ] Payment gateways (multiple providers)
- [ ] SMS gateways
- [ ] Email service providers
- [ ] Cloud storage (AWS S3, Azure Blob)
- [ ] CDN services
- [ ] Analytics platforms
- [ ] CRM systems
- [ ] ERP systems

### 9.2 Healthcare Systems
- [ ] Hospital Information Systems (HIS)
- [ ] Laboratory Information Systems (LIS)
- [ ] Pharmacy Management Systems
- [ ] Electronic Health Records (EHR)
- [ ] Insurance provider systems
- [ ] Government health portals

## 10. Migration Strategy

### 10.1 Phase 1: Stabilization (Months 1-2)
- Fix critical security vulnerabilities
- Implement proper error handling
- Set up monitoring and logging
- Database backup automation
- Code cleanup and refactoring

### 10.2 Phase 2: Modernization (Months 3-6)
- Upgrade to latest PHP version
- Migrate to modern framework (Laravel/Symfony)
- Implement proper authentication (OAuth2/JWT)
- Add API versioning
- Introduce caching layer

### 10.3 Phase 3: Enhancement (Months 7-12)
- Build missing features
- Mobile app development
- Advanced analytics
- AI/ML integration
- Microservices architecture

### 10.4 Phase 4: Scale (Months 13+)
- Horizontal scaling
- Multi-region deployment
- Advanced monitoring
- Continuous deployment pipeline
- Performance optimization

## 11. Success Metrics

### 11.1 Technical KPIs
- API response time < 200ms
- Database query time < 50ms
- Uptime > 99.9%
- Zero critical security vulnerabilities
- Code coverage > 80%

### 11.2 Business KPIs
- User registration growth
- Appointment booking conversion rate
- Provider retention rate
- Customer satisfaction score (CSAT)
- Net Promoter Score (NPS)
- Monthly Active Users (MAU)
- Average Revenue Per User (ARPU)

## 12. Risk Assessment

### 12.1 High Risks
- **Security breaches** due to legacy code
- **Data loss** from inadequate backups
- **Compliance violations** leading to legal issues
- **System downtime** affecting patient care

### 12.2 Medium Risks
- **Technical debt** accumulation
- **Talent retention** (developers avoiding legacy tech)
- **Integration failures** with third-party systems
- **Performance degradation** under load

### 12.3 Mitigation Strategies
- Regular security audits
- Automated backup and recovery testing
- Compliance checklist and regular reviews
- Load testing and capacity planning
- Documentation and knowledge transfer
- Gradual migration strategy

## 13. Budget & Resource Estimation

### 13.1 Team Requirements
- 2 Senior Backend Developers
- 2 Frontend Developers
- 1 DevOps Engineer
- 1 QA Engineer
- 1 Security Specialist (part-time)
- 1 Product Manager
- 1 UI/UX Designer

### 13.2 Infrastructure Costs
- Cloud hosting (AWS/Azure/GCP)
- CDN services
- Monitoring tools
- Security tools
- Backup solutions
- Development tools and licenses

### 13.3 Timeline
- **Phase 1:** 2 months
- **Phase 2:** 4 months
- **Phase 3:** 6 months
- **Phase 4:** Ongoing

## 14. Appendix

### 14.1 Glossary
- **OPD:** Outpatient Department
- **MCI:** Medical Council of India
- **DICOM:** Digital Imaging and Communications in Medicine
- **HL7:** Health Level 7
- **FHIR:** Fast Healthcare Interoperability Resources

### 14.2 References
- CodeIgniter Documentation: https://codeigniter.com/user_guide/
- HIPAA Guidelines: https://www.hhs.gov/hipaa/
- GDPR Guidelines: https://gdpr.eu/

---

**Document Version:** 1.0  
**Last Updated:** 2024  
**Prepared By:** Code Review Team  
**Status:** Draft for Review
