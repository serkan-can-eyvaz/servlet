<%-- 
    Document   : listPersonel
    Created on : Jun 2, 2024, 6:15:38 PM
    Author     : Muhsin21
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Personel Listeleme</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Personel Kayıt Sistemi</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Anasayfa</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add_personel.html">Personel Ekle</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="personel">Personel Listele</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <h1>Personel Listeleme</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Ad</th>
                    <th>Soyad</th>
                    <th>Sicil Numarası</th>
                    <th>Departman</th>
                    <th>Telefon</th>
                    <th>İşe Giriş Tarihi</th>
                    <th>Maaş Tutarı</th>
                    <th>Aktiflik</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="personel" items="${personelList}">
                    <tr>
                        <td>${personel.name}</td>
                        <td>${personel.surname}</td>
                        <td>${personel.registrationNumber}</td>
                        <td>${personel.department}</td>
                        <td>${personel.phone}</td>
                        <td>${personel.hireDate}</td>
                        <td>${personel.salary}</td>
                        <td>${personel.isActive ? 'Evet' : 'Hayır'}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="mt-3">
            <p>Toplam Personel Sayısı: ${personelList.size()}</p>
            <p>Toplam Maaş: ${totalSalary}</p>
        </div>
    </div>
</body>
</html>
