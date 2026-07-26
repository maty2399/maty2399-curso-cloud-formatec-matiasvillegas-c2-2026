# Entregables LAB04 - Matías Villegas

1. **Código Fuente:** Adjuntos los archivos `data.tf` y `locals.tf`.
2. **Outputs de Ejecución:**
   - Account ID: `101374115496`
   - AWS Region: `us-east-1`
   - Nombre Final del Bucket: `formatec-lab-mv-101374115496`
3. **Explicación Conceptual:**
   - **Valores desde Variables (`variables.tf` / `terraform.tfvars`):** Parámetros de entrada definidos externamente, como `aws_region`, `project`, `environment` y `student_identity`.
   - **Valores desde Data Sources (`data.tf`):** Información que Terraform consulta en tiempo de ejecución directamente a la API de AWS (como `account_id` mediante `aws_caller_identity` y la región activa con `aws_region`).
   - **Valores Calculados en Locals (`locals.tf`):** Transformaciones o combinaciones locales dentro del código. `bucket_name` se calcula uniendo las variables de entorno con el ID de cuenta de AWS, y `common_tags` unifica las etiquetas aplicables a todos los recursos.
4. **Limpieza:** Entorno destruido exitosamente mediante `terraform destroy`.