# Canteen Management Stock Addition Form

This project is a web-based form for adding stock of raw materials in a canteen management system. The form includes fields for product details, supplier information, and date validations for manufacturing and expiry dates. The form uses Bootstrap for styling and JavaScript for client-side validation.

## Project Discussion

The Canteen Management Stock Addition Form is designed to streamline the process of managing stock inventory in a canteen. The primary objective is to provide an easy-to-use interface for employees to add and track raw material stocks efficiently. This project leverages a range of technologies to create a robust, user-friendly, and responsive web application.

### Technology Stack

#### Frontend
- **HTML**: Utilized to structure the content of the form and ensure semantic markup.
- **Bootstrap**: Provides a responsive and modern design, making the form aesthetically pleasing and mobile-friendly.
- **JavaScript**: Manages client-side validation to ensure all inputs are correct before submitting the form, enhancing the user experience by providing immediate feedback.

#### Backend
- **PHP**: The core technology for server-side scripting in this project. PHP handles form data processing, including receiving input from the form, validating it on the server-side, and interacting with the database to store and retrieve stock information.

### Additional Technologies
- **MySQL**: Used as the database management system to store stock details securely and efficiently.
- **Apache**: Serves as the web server, hosting the PHP scripts and serving the application to users.

### Form Fields

- **Product Name**: Enter the name of the product.
- **Description**: Provide a description of the product.
- **Supplier**: Select the supplier from the dropdown list.
- **Date of Manufacturing**: Select the manufacturing date of the product.
- **Expiry Date**: Select the expiry date of the product.
- **Quantity**: Enter the quantity of the product.

### Validation Rules

- All fields are required and cannot be empty.
- The manufacturing date cannot be in the future.
- The expiry date must be after the manufacturing date.
- The difference between the manufacturing date and the expiry date must be between 0 and 30 days.

## About PHP

PHP (Hypertext Preprocessor) is a widely-used, open-source scripting language that is especially suited for web development and can be embedded into HTML. PHP scripts are executed on the server, generating dynamic page content or performing server-side tasks such as form processing, session management, and database interactions. Known for its simplicity, flexibility, and ease of integration with various databases, PHP powers many popular websites and content management systems, making it a fundamental technology in web development.

## Installation

1. Clone the repository:

    ```sh
    https://github.com/Gaurav-P22/C-Man/tree/main.git
    ```

2. Navigate to the project directory:

    ```sh
    cd C-Man
    ```

3. Open the `index.html` file in your web browser.

## Usage

1. Open the `index.html` file in a web browser.
2. Fill in the form fields with the product details, supplier information, and dates.
3. Click the `Submit` button.
4. The form will validate the inputs. If there are any validation errors, an alert message will be displayed.
5. If all inputs are valid, the form will be submitted.

## Code Explanation

### HTML

The HTML structure of the form includes various input fields and a submit button. Bootstrap classes are used for styling.

### JavaScript

The JavaScript function `validateDates()` is used for client-side validation. It checks the following:
- All required fields are filled.
- The manufacturing date is not in the future.
- The expiry date is after the manufacturing date.
- The difference between the manufacturing date and expiry date is within a specified range (0 to 30 days).

### Example

```html
<script>
function validateDates() {
    // Retrieve form inputs
    const productName = document.getElementById("PName").value;
    const description = document.getElementById("Des").value;
    const supplier = document.getElementById("supplier").value;
    const manufacturingDate = new Date(document.getElementById("manufacturingDate").value);
    const expiryDate = new Date(document.getElementById("expiryDate").value);
    const today = new Date();

    // Validate Product Name, Description, and Supplier
    if (productName.trim() === '' || description.trim() === '' || supplier === '') {
        alert("Please fill out all the required fields.");
        return false;
    }

    // Validate Date of Manufacturing and Expiry Date
    if (manufacturingDate > today) {
        alert("Manufacturing date cannot be in the future.");
        return false;
    }

    if (manufacturingDate > expiryDate) {
        alert("Expiry date must be after manufacturing date.");
        return false;
    }

    // Calculate the difference in days between manufacturing and expiry date
    const timeDifference = expiryDate.getTime() - manufacturingDate.getTime();
    const daysDifference = timeDifference / (1000 * 3600 * 24);

    // Validate if the difference is greater than a certain threshold (e.g., 30 days)
    const maxDifference = 30;

    if (daysDifference < 0 || daysDifference > maxDifference) {
        alert(`The difference between manufacturing and expiry date must be between 0 and ${maxDifference} days.`);
        return false;
    }

    // If all validations pass, the form will submit
    return true;
}
</script>
