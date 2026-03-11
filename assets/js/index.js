document.addEventListener("DOMContentLoaded", function () {

    const boton = document.getElementById("toggleFiltros");
    const sidebar = document.getElementById("sidebar");

    const checkboxes = document.querySelectorAll(".sidebar input[type='checkbox']");
    const productos = document.querySelectorAll(".product-card");

    checkboxes.forEach(function (checkbox) {

        checkbox.addEventListener("change", function () {

            const todo = document.querySelector("input[value='todo']");

            // Si se marca "Todo"
            if (this.value === "todo") {

                checkboxes.forEach(cb => {
                    if (cb.value !== "todo") cb.checked = false;
                });

                productos.forEach(p => p.style.display = "block");
                return;
            }

            // Si se marca cualquier otro
            todo.checked = false;

            let filtros = [];

            checkboxes.forEach(cb => {
                if (cb.checked && cb.value !== "todo") {
                    filtros.push(cb.value);
                }
            });

            productos.forEach(producto => {

                let mostrar = false;

                filtros.forEach(filtro => {
                    if (producto.classList.contains(filtro)) {
                        mostrar = true;
                    }
                });

                producto.style.display = mostrar ? "block" : "none";

            });

        });

    });

    boton.addEventListener("click", function () {

        sidebar.classList.toggle("sidebar-oculta");

        if (sidebar.classList.contains("sidebar-oculta")) {
            boton.textContent = "Mostrar filtros";
        } else {
            boton.textContent = "Ocultar filtros";
        }
    });

});