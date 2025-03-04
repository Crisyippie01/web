<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.io.OutputStream, java.io.BufferedReader, java.io.InputStreamReader, java.net.HttpURLConnection, java.net.URL, java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<HashMap<String, String>> carrito = (ArrayList<HashMap<String, String>>) session.getAttribute("carrito");

    if (carrito == null || carrito.isEmpty()) {
        response.sendRedirect("error.jsp?mensaje=El carrito está vacío");
        return;
    }

    String correo = request.getParameter("correo");
    String telefono = request.getParameter("telefono");

    if (correo == null || correo.trim().isEmpty() || telefono == null || telefono.trim().isEmpty()) {
        response.sendRedirect("error.jsp?mensaje=Correo o teléfono no proporcionados");
        return;
    }

    StringBuilder mensaje = new StringBuilder();
    mensaje.append("Nuevo pedido:\n");
    mensaje.append("Correo: ").append(correo).append("\n");
    mensaje.append("Teléfono: ").append(telefono).append("\n");
    mensaje.append("Productos:\n");

    double totalPedido = 0; // Variable para calcular el total del pedido

    for (HashMap<String, String> item : carrito) {
        if (item != null && item.containsKey("nombre") && item.containsKey("cantidad") && item.containsKey("precio")) {
            String nombre = item.get("nombre");
            int cantidad = Integer.parseInt(item.get("cantidad"));
            double precio = Double.parseDouble(item.get("precio"));
            double subtotal = cantidad * precio; // Calcular el subtotal del producto
            totalPedido += subtotal; // Sumar al total del pedido

            mensaje.append("- ").append(nombre)
                  .append(": Cantidad = ").append(cantidad)
                  .append(", Precio Unitario = $").append(String.format("%.2f", precio))
                  .append(", Subtotal = $").append(String.format("%.2f", subtotal)).append("\n");
        }
    }

    // Agregar el total del pedido al mensaje
    mensaje.append("Total del Pedido: $").append(String.format("%.2f", totalPedido)).append("\n");

    String webhookUrl = "https://discord.com/api/webhooks/1346222980958781532/JB2k9f1tn53jAo5T4C3SVQNI6WW-6aibowvdVLb2KYZ_xPDMm7_CQf51k5NHy__FGN71";

    try {
        URL url = new URL(webhookUrl);
        HttpURLConnection http = (HttpURLConnection) url.openConnection();
        http.setRequestMethod("POST");
        http.setDoOutput(true);
        http.setRequestProperty("Content-Type", "application/json");

        String json = "{\"content\":\"" + mensaje.toString().replace("\"", "\\\"").replace("\n", "\\n") + "\"}";
        System.out.println("JSON enviado: " + json);

        try (OutputStream os = http.getOutputStream()) {
            byte[] input = json.getBytes(StandardCharsets.UTF_8);
            os.write(input, 0, input.length);
        }

        int responseCode = http.getResponseCode();
        System.out.println("Código de respuesta: " + responseCode);

        if (responseCode == HttpURLConnection.HTTP_NO_CONTENT || responseCode == HttpURLConnection.HTTP_OK) {
            session.removeAttribute("carrito");
            response.sendRedirect("exito.jsp");
        } else {
            BufferedReader br = new BufferedReader(new InputStreamReader(http.getErrorStream()));
            String linea;
            while ((linea = br.readLine()) != null) {
                System.out.println("Respuesta del servidor: " + linea);
            }
            response.sendRedirect("error.jsp?mensaje=Error al enviar el pedido a Discord");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("error.jsp?mensaje=Error en el servidor: " + e.getMessage());
    }
%>