# 🍼 Baby Tools Shop

An e-commerce web application built with Django for selling baby-related products like strollers, toys, clothing, and more. The goal of this repository is to provide a modular and extensible foundation for an online baby shop, including product categories, user authentication, shopping cart functionality, and administrative tools.

---

## 📑 Table of Contents

- [🍼 Baby Tools Shop](#-baby-tools-shop)
- [🚀 Quickstart](#-quickstart)
- [⚙️ Usage](#️-usage)
  - [Configuration Overview](#configuration-overview)
  - [Running on local machine](#running-in-production)
  - [Modifying Categories or Products in Admin Panel](#modifying-categories-or-products-in-admin-panel)
- [📁 Project Structure](#-project-structure)
- [🛠️ Technologies Used](#️-technologies-used)

---

## 🚀 Quickstart

### ✅ Prerequisites

- Docker installed (Docker Engine + Docker Compose)
- Python 3.13
- Git

### 🏁 Starting the Application

You can start the development server easily using Docker:

```bash
git clone <url>/baby-tools-shop.git
cd baby-tools-shop

# Create user to login into admin panel if not exist
python3 manage.py createsuperuser

# Build the image
docker build -t babyshop-app -f Dockerfile .

# Run the container
docker run -it -p 8025:8000 babyshop-app
```

Now open your browser and go to [http://localhost:8025](http://localhost:8025)

---

## ⚙️ Usage

### Configuration Overview

The app is structured to allow easy configuration and customization. You can configure:

- Product categories and product data via Django admin or seed scripts
- User authentication using Django’s built-in `User` model
- Docker-based setup with automatic migration and server startup
- Port configuration using Docker’s `-p` flag


### Running on local machine
To run the app locally without Docker, follow these steps:

1. **Create a Virtual Environment:**
```bash
python3 -m venv venv
```

2. **Activate the Virtual Environment:**

On macOS/Linux:
```bash
source venv/bin/activate
```

On Windows:
```bash
venv\Scripts\activate
```

3. **Install the Required Dependencies:**
```bash
python3 -m pip install -r requirements.txt
```

4. **Create a Superuser to Manage the App:**
```bash
cd babyshop_app/
python3 manage.py createsuperuser
```

5. **Apply Migrations and Run Server:**
```bash
python3 manage.py migrate
python3 manage.py runserver
```

Now open your browser and go to [http://localhost:8000](http://localhost:8000)

### Modifying Categories or Products in Admin Panel

Log into the admin panel:

Runned on local machine :
[http://127.0.0.1:8000/admin](http://127.0.0.1:8000/admin)

Runned in docker :
[http://127.0.0.1:8025/admin](http://127.0.0.1:8025/admin)


In the admin panel, edit categories and products to populate your store.

---

## 📁 Project Structure
```
baby-tools-shop/                  # Root directory of the project
│
├── Dockerfile                    # Docker configuration to build and run the app
├── LICENSE                       # Project license file
├── README.md                     # Main README file for project documentation
├── requirements.txt              # Python dependencies (Django, Pillow, etc.)
│
├── babyshop_app/                 # Main Django application
│   ├── babyshop/                 # Core module for the baby shop functionality (models, views, etc.)
│   ├── db.sqlite3                # SQLite database file for local development
│   ├── manage.py                 # Django project management script
│   ├── media/                    # Folder for uploaded media (e.g., product images)
│   ├── products/                 # Django app for managing products
│   ├── templates/                # HTML templates for views
│   ├── users/                    # Django app for managing user authentication and profiles
│
├── project_images/               # Folder containing product images (e.g., sample product images)
└── venv/                         # Python virtual environment (can be created with `python3 -m venv venv`)
    ├── bin/                      # Executable binaries for the virtual environment
    ├── include/                  # Include files for the virtual environment
    ├── lib/                      # Libraries for the virtual environment
    ├── lib64 -> lib/             # Symlink to the `lib` folder
    ├── .gitignore                # Git ignore file for the virtual environment
    └── pyvenv.cfg                # Virtual environment configuration file
```
---

## 🛠️ Technologies Used

- Python 3.13
- Django
- Docker
- SQLite

---