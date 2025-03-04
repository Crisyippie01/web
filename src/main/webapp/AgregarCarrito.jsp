<%@page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList, java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Obtener el carrito desde la sesión
    ArrayList<HashMap<String, String>> carrito = (ArrayList<HashMap<String, String>>) session.getAttribute("carrito");

    // Si el carrito no existe en la sesión, crearlo
    if (carrito == null) {
        carrito = new ArrayList<>();
        session.setAttribute("carrito", carrito);
    }

    // Obtener los parámetros del formulario
    String nombreProducto = request.getParameter("nombre");
    String cantidad = request.getParameter("cantidad");
    String precio = request.getParameter("precio");

    // Validar que los parámetros no sean nulos ni vacíos
    if (nombreProducto != null && cantidad != null && precio != null && 
        !nombreProducto.trim().isEmpty() && !cantidad.trim().isEmpty() && !precio.trim().isEmpty()) {
        boolean existe = false;

        // Recorrer el carrito para actualizar la cantidad si el producto ya está agregado
        for (HashMap<String, String> item : carrito) {
            if (item != null && item.containsKey("nombre") && nombreProducto.equals(item.get("nombre"))) {
                // Reemplazar la cantidad existente con la nueva cantidad
                item.put("cantidad", cantidad);
                item.put("precio", precio);
                existe = true;
                break;
            }
        }

        // Si el producto no estaba en el carrito, agregarlo
        if (!existe) {
            HashMap<String, String> nuevoItem = new HashMap<>();
            nuevoItem.put("nombre", nombreProducto);
            nuevoItem.put("cantidad", cantidad);
            nuevoItem.put("precio", precio);
            carrito.add(nuevoItem);
        }
    }

    // Verificar si se quiere eliminar un producto del carrito
    String eliminar = request.getParameter("eliminar");
    if (eliminar != null && !eliminar.trim().isEmpty()) {
        Iterator<HashMap<String, String>> iterator = carrito.iterator();
        while (iterator.hasNext()) {
            HashMap<String, String> item = iterator.next();
            if (item != null && item.containsKey("nombre") && eliminar.equals(item.get("nombre"))) {
                iterator.remove(); // Eliminar solo el primer producto que coincida
                break; // Detiene el ciclo para no eliminar más productos con el mismo nombre
            }
        }
    }

    // Calcular el total del carrito
    double totalCarrito = 0;
    for (HashMap<String, String> item : carrito) {
        if (item != null && item.containsKey("precio") && item.containsKey("cantidad")) {
            double precioItem = Double.parseDouble(item.get("precio"));
            int cantidadItem = Integer.parseInt(item.get("cantidad"));
            totalCarrito += precioItem * cantidadItem;
        }
    }
%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Carrito de Compras</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-dark text-white">
        <div class="container mt-5">
            <h2 class="text-center">Carrito de Compras</h2>

            <table class="table table-dark">
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th>Cantidad</th>
                        <th>Precio Unitario</th>
                        <th>Subtotal</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (HashMap<String, String> item : carrito) {
                            if (item != null && item.containsKey("nombre") && item.containsKey("cantidad") && item.containsKey("precio") && 
                                !item.get("nombre").trim().isEmpty() && !item.get("cantidad").trim().isEmpty() && !item.get("precio").trim().isEmpty()) {
                                double precioItem = Double.parseDouble(item.get("precio"));
                                int cantidadItem = Integer.parseInt(item.get("cantidad"));
                                double subtotal = precioItem * cantidadItem;
                    %>
                    <tr>
                        <td><%= item.get("nombre")%></td>
                        <td>
                            <form method="GET">
                                <input type="number" name="cantidad" value="<%= item.get("cantidad")%>" min="1">
                                <input type="hidden" name="nombre" value="<%= item.get("nombre")%>">
                                <input type="hidden" name="precio" value="<%= item.get("precio")%>">
                                <button type="submit" class="btn btn-sm btn-primary">Actualizar</button>
                            </form>
                        </td>
                        <td>$<%= String.format("%.2f", precioItem) %></td>
                        <td>$<%= String.format("%.2f", subtotal) %></td>
                        <td>
                            <form method="GET">
                                <input type="hidden" name="eliminar" value="<%= item.get("nombre")%>">
                                <button type="submit" class="btn btn-sm btn-danger">Eliminar</button>
                            </form>
                        </td>
                    </tr>
                    <% }
                        }%>
                </tbody>
            </table>

            <!-- Mostrar el total del carrito -->
            <div class="text-end mt-3">
                <h4>Total: $<%= String.format("%.2f", totalCarrito) %></h4>
            </div>

            <form method="post" action="enviarCarrito.jsp">
                <div class="mb-3">
                    <label for="correo" class="form-label">Correo (Nick de Discord)</label>
                    <input type="text" class="form-control" id="correo" name="correo" required>
                </div>
                <div class="mb-3">
                    <label for="telefono" class="form-label">Teléfono</label>
                    <input type="text" class="form-control" id="telefono" name="telefono" required>
                </div>
                <button type="submit" class="btn btn-success">Enviar Pedido</button>
            </form>

            <!-- Botón para volver a ComprarEquipo.jsp -->
            <div class="mt-3">
                <a href="ComprarEquipo.jsp" class="btn btn-secondary">Volver a Comprar</a>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>