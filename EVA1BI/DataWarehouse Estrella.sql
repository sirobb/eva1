SELECT 
    t.Trimestre,
    s.Nombre_Sucursal,
    p.Tipo_Producto,
    SUM(v.Cantidad_Autos) AS Total_Autos,
    SUM(v.Cantidad_Motos) AS Total_Motos,
    SUM(v.Venta_Total) AS Total_Ventas
FROM 
    Fact_Ventas v
JOIN 
    Dim_Trimestres t ON v.ID_Trimestre = t.ID_Trimestre
JOIN 
    Dim_Sucursales s ON v.ID_Sucursal = s.ID_Sucursal
JOIN 
    Dim_Producto p ON v.ID_Producto = p.ID_Producto
GROUP BY 
    t.Trimestre, s.Nombre_Sucursal, p.Tipo_Producto;