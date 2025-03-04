<%@ page import="java.io.OutputStreamWriter, java.net.HttpURLConnection, java.net.URL, org.json.JSONObject" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="org.json.JSONObject"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Envio de Datos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-dark text-bg-dark p-3">

        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <h2>Rellena tus Datos</h2>

                    <div class="alert alert-warning" role="alert">
                        ¡Una vez se completen los campos te llegará un correo con los datos de transferencia!
                    </div>

                    <%
                        // Captura el producto seleccionado
                        String producto = request.getParameter("producto");
                        if (producto != null) {
                            session.setAttribute("producto", producto);
                        } else {
                            producto = (String) session.getAttribute("producto");
                        }
                    %>

                    <div class="alert alert-info" role="alert">
                        Estás comprando: <%= producto%>
                    </div>

                    <form action="EnviarDatos.jsp" method="post">
                        <div class="mb-3">
                            <label for="user_cuenta" class="form-label">Correo (Usuario de Discord):</label>
                            <input type="text" class="form-control" id="user_cuenta" name="user_cuenta" placeholder="Nombre de Cuenta" required>
                        </div>

                        <div class="mb-3">
                            <label for="user_number" class="form-label">Teléfono:</label>
                            <input type="text" class="form-control" id="user_number" name="user_number" placeholder="Teléfono" required>
                        </div>

                        <div class="mb-3">
                            <a href="ComprarMapa.jsp" class="btn btn-danger">SALIR</a>
                            <button type="submit" name="guardar" class="btn btn-primary">GUARDAR</button>
                        </div>
                    </form>

                    <%
                        if ("POST".equalsIgnoreCase(request.getMethod())) {
                            String userCuenta = request.getParameter("user_cuenta");
                            String userNumber = request.getParameter("user_number");

                            if (userCuenta != null && userNumber != null && producto != null) {
                                try {
                                    // URL del Webhook de Discord (cámbiala por la tuya)
                                    String discordWebhookURL = "https://discord.com/api/webhooks/1346222980958781532/JB2k9f1tn53jAo5T4C3SVQNI6WW-6aibowvdVLb2KYZ_xPDMm7_CQf51k5NHy__FGN71";

                                    // Crea el JSON con los datos del usuario
                                    JSONObject json = new JSONObject();
                                    json.put("content", "**Nueva compra realizada**");
                                    json.put("embeds", new org.json.JSONArray().put(new JSONObject()
                                            .put("title", "Detalles de la compra")
                                            .put("color", 3447003)
                                            .put("fields", new org.json.JSONArray()
                                                    .put(new JSONObject().put("name", "Producto").put("value", producto))
                                                    .put(new JSONObject().put("name", "Usuario de Discord").put("value", userCuenta))
                                                    .put(new JSONObject().put("name", "Teléfono").put("value", userNumber))
                                            )
                                    ));

                                    // Abre conexión con Discord
                                    URL url = new URL(discordWebhookURL);
                                    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                                    conn.setRequestMethod("POST");
                                    conn.setRequestProperty("Content-Type", "application/json");
                                    conn.setDoOutput(true);

                                    // Envía la solicitud con los datos JSON
                                    OutputStreamWriter writer = new OutputStreamWriter(conn.getOutputStream());
                                    writer.write(json.toString());
                                    writer.flush();
                                    writer.close();

                                    // Verifica respuesta
                                    int responseCode = conn.getResponseCode();
                                    if (responseCode == 204) {
                                        out.println("<div class='alert alert-success' role='alert'>¡Datos enviados con éxito a Discord!</div>");
                                    } else {
                                        out.println("<div class='alert alert-danger' role='alert'>Error al enviar datos a Discord.</div>");
                                    }

                                } catch (Exception e) {
                                    out.println("<div class='alert alert-danger' role='alert'>Error: " + e.getMessage() + "</div>");
                                }
                            }
                        }
                    %>

                </div>
            </div>
        </div>

    </body>
</html>
