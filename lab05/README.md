# Entregables LAB05 - Matías Villegas

1. **Estructura de Carpetas:**
   - `lab05/main.tf` (Root module)
   - `lab05/modules/s3-basic/` (Child module)
2. **Explicación del Módulo (`s3-basic`):**
   - **Qué recibe:** Recibe como parámetros de entrada las variables `bucket_name` (string) y `tags` (mapa de strings).
   - **Qué devuelve:** Expone a través de sus outputs el `bucket_name` y el `bucket_arn` del recurso S3 creado.
3. **Reutilización:** Se utilizó el módulo 3 veces desde el *root module* para instanciar los buckets `logs`, `data` y `reports` manteniendo una estructura DRY (*Don't Repeat Yourself*).
4. **Limpieza:** Recursos borrados exitosamente mediante `terraform destroy`.