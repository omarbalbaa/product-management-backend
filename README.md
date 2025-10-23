**Frontend:**  
[https://product-management-frontend.pages.dev/](https://product-management-frontend.pages.dev/)

**Backend:**  
Clone the backend code from:  
[https://github.com/omarbalbaa/product-management-backend](https://github.com/omarbalbaa/product-management-backend)

Then, in the root folder, run:
```bash
php -S localhost:8000
```
import database files from database-files folder into MySQL workbench
Add your credentials to .env file with the following variable names:
DB_HOST=
DB_NAME=
DB_USER=
DB_PASS=
FRONTEND_ORIGIN=https://product-management-frontend.pages.dev

To test login and admin features locally: /?route=user
credentials:
{
    "username": "admin",
    "password": "@dmiN123"
}
