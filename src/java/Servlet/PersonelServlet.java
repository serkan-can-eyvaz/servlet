package Servlet;

import Entity.Personel;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/personel")
public class PersonelServlet extends HttpServlet {
    private List<Personel> personelList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double totalSalary = personelList.stream().mapToDouble(Personel::getSalary).sum();
        request.setAttribute("personelList", personelList);
        request.setAttribute("totalSalary", totalSalary);
        request.getRequestDispatcher("/listPersonel.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String registrationNumber = request.getParameter("registrationNumber");
        String department = request.getParameter("department");
        String phone = request.getParameter("phone");
        String hireDate = request.getParameter("hireDate");
        double salary = Double.parseDouble(request.getParameter("salary"));
        boolean isActive = Boolean.parseBoolean(request.getParameter("isActive"));

        Personel personel = new Personel();
        personel.setName(name);
        personel.setSurname(surname);
        personel.setRegistrationNumber(registrationNumber);
        personel.setDepartment(department);
        personel.setPhone(phone);
        personel.setHireDate(hireDate);
        personel.setSalary(salary);
        personel.setIsActive(isActive);

        personelList.add(personel);

        request.setAttribute("message", "Personel added successfully!");
        request.getRequestDispatcher("/AddPersonel.html").forward(request, response);
    }
}
