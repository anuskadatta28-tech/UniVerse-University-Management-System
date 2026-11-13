
// ==========================================
// UNIVERSE - UNIVERSITY MANAGEMENT SYSTEM
// Frontend Demo using HTML, CSS and JavaScript
// ==========================================

const menuItems = document.querySelectorAll(".sidebar li");
const heading = document.querySelector("header h1");
const welcome = document.querySelector(".welcome");
const stats = document.querySelector(".stats");

// Demo data (not connected to MySQL)
const data = {

    Students: {
        columns: ["Student ID", "Name", "Department", "Semester"],
        rows: [
            [1, "Anuska Datta", "CSE", 3],
            [2, "Rahul Sharma", "ECE", 3],
            [3, "Priya Singh", "ME", 3],
            [4, "Aarav Gupta", "MBA", 3],
            [5, "Sneha Verma", "CSE", 3]
        ]
    },

    Faculty: {
        columns: ["Faculty ID", "Name", "Department", "Designation"],
        rows: [
            [1, "Dr. Gaurav Bathla", "CSE", "HOD"],
            [2, "Dr. Jasneet Kaur", "ECE", "HOD"],
            [3, "Dr. Ishdeep Singhla", "ME", "HOD"],
            [4, "Dr. Manoj Singla", "MBA", "HOD"],
            [5, "Dr. Amit Kumar", "CSE", "Professor"]
        ]
    },

    Departments: {
        columns: ["Department ID", "Department", "Code", "Office"],
        rows: [
            [1, "Computer Science", "CSE", "B1"],
            [2, "Electronics", "ECE", "C2"],
            [3, "Mechanical", "ME", "B3"],
            [4, "Management", "MBA", "B4"]
        ]
    },

    Courses: {
        columns: ["Course ID", "Course Name", "Department", "Credits"],
        rows: [
            [1, "Database Management System", "CSE", 4],
            [2, "Data Structures", "CSE", 4],
            [3, "Computer Organization", "CSE", 3],
            [4, "Probability and Statistics", "CSE", 3],
            [5, "Digital Electronics", "ECE", 4]
        ]
    },

    Attendance: {
        columns: ["Record ID", "Student", "Course", "Status"],
        rows: [
            [1, "Anuska Datta", "DBMS", "Present"],
            [2, "Rahul Sharma", "DBMS", "Present"],
            [3, "Priya Singh", "ADSA", "Absent"],
            [4, "Aarav Gupta", "COA", "Present"],
            [5, "Sneha Verma", "DBMS", "Present"]
        ]
    },

    Examinations: {
        columns: ["Exam ID", "Course", "Exam Type", "Maximum Marks"],
        rows: [
            [1, "DBMS", "MST 1", 30],
            [2, "ADSA", "MST 1", 30],
            [3, "COA", "MST 1", 30],
            [4, "Java", "MST 1", 30]
        ]
    },

    Results: {
        columns: ["Result ID", "Student", "Course", "Marks"],
        rows: [
            [1, "Anuska Datta", "DBMS", 27],
            [2, "Rahul Sharma", "ADSA", 25],
            [3, "Priya Singh", "COA", 24],
            [4, "Aarav Gupta", "Java", 26]
        ]
    },

    Fees: {
        columns: ["Payment ID", "Student", "Amount", "Payment Status"],
        rows: [
            [1, "Anuska Datta", "₹50,000", "Paid"],
            [2, "Rahul Sharma", "₹50,000", "Pending"],
            [3, "Priya Singh", "₹50,000", "Paid"],
            [4, "Aarav Gupta", "₹50,000", "Pending"]
        ]
    },

    Timetable: {
        columns: ["Schedule ID", "Course", "Day", "Time", "Room"],
        rows: [
            [1, "DBMS", "Monday", "09:00 AM", "B1-101"],
            [2, "ADSA", "Tuesday", "10:00 AM", "B1-102"],
            [3, "Java", "Wednesday", "11:00 AM", "B1-103"],
            [4, "COA", "Thursday", "12:00 PM", "B1-104"]
        ]
    }
};

// Dashboard content
function showDashboard() {

    heading.textContent = "Dashboard";

    stats.style.display = "grid";

    welcome.innerHTML = `
        <h2>University Overview</h2>
        <p>
            Welcome to UniVerse. Manage students, faculty,
            departments, courses, attendance, examinations,
            results, fees and academic records from one place.
        </p>

        <div class="dashboard-message">
            <h3>Welcome to UniVerse! 🎓</h3>
            <p>Your university management system is ready.</p>
        </div>
    `;
}

// Create a table for each section
function showSection(section) {

    const sectionData = data[section];

    if (!sectionData) return;

    heading.textContent = section;
    stats.style.display = "none";

    const tableHeaders = sectionData.columns
        .map(column => `<th>${column}</th>`)
        .join("");

    const tableRows = sectionData.rows
        .map(row => `
            <tr>
                ${row.map(value => `<td>${value}</td>`).join("")}
            </tr>
        `)
        .join("");

    welcome.innerHTML = `
        <div class="section-header">
            <div>
                <h2>${section} Records</h2>
                <p>View and manage ${section.toLowerCase()} information.</p>
            </div>

            <span class="record-count">
                ${sectionData.rows.length} Records
            </span>
        </div>

        <input
            type="text"
            class="search-box"
            id="recordSearch"
            placeholder="Search ${section.toLowerCase()}..."
        >

        <div class="table-container">
            <table>
                <thead>
                    <tr>${tableHeaders}</tr>
                </thead>

                <tbody id="recordTable">
                    ${tableRows}
                </tbody>
            </table>
        </div>

        <p class="demo-note">
            Note: These are sample demonstration records.
            They are not live MySQL database records.
        </p>
    `;

    // Search functionality
    const searchBox = document.getElementById("recordSearch");

    searchBox.addEventListener("input", function () {

        const searchValue = this.value.toLowerCase();

        document.querySelectorAll("#recordTable tr").forEach(row => {

            const rowText = row.textContent.toLowerCase();

            row.style.display = rowText.includes(searchValue)
                ? ""
                : "none";

        });
    });
}

// Sidebar navigation
menuItems.forEach(item => {

    item.addEventListener("click", function () {

        menuItems.forEach(menu => {
            menu.classList.remove("active");
        });

        this.classList.add("active");

        const selectedSection = this.textContent.trim();

        if (selectedSection === "Dashboard") {
            showDashboard();
        } else {
            showSection(selectedSection);
        }

    });

});

// Load dashboard when page opens
showDashboard();
