<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Personel Listeleme</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f8f9fa;
        }
        nav {
            width: 100%;
            background-color: #ffffff;
            border-bottom: 2px solid #f8f9fa;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .navbar-nav .nav-link {
            color: orange !important;
            transition: opacity 0.3s;
        }
        .navbar-nav .nav-link:hover {
            opacity: 0.7;
        }
        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px; /* Nav bar altında boşluk bırakmak için */
        }
        h1, label {
            color: orange;
        }
        .form-group {
            text-align: left;
        }
        .table th, .table td {
            color: orange;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#" style="color: orange;">Personel Kayıt Sistemi</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
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
            <p>Toplam Maaş Tutarı: ${totalSalary}</p>
        </div>
    </div>
</body>
</html>
