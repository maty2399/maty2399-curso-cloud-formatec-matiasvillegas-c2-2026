# Entregables LAB03 - Matías Villegas

1. **Outputs:** Consultados exitosamente mediante `terraform output`.
2. **Estado Local:** Revisado con `terraform state list` observando los 4 recursos administrados (`archive_file`, `iam_role`, `iam_role_policy_attachment` y `lambda_function`).
3. **Plan de Cambios:** Detectado correctamente mediante la recarga del hash.
4. **Invocación:**
   - Respuesta inicial: `"hola desde lambda"`
   - Respuesta tras el cambio: `"hola desde lambda - cambio controlado"`
5. **Explicación Breve (Cómo detectó Terraform el cambio):**
   Terraform detectó la modificación en `lambda_function.py` gracias al bloque `data "archive_file"` en el `main.tf`. Al modificar el archivo Python, Terraform recalculó el hash criptográfico del ZIP (`source_code_hash`) y lo comparó contra el registrado en `terraform.tfstate`. Al notar la discrepancia en los valores del hash, marcó en el `plan` que debía realizarse una actualización (*in-place update*) del código de la función en AWS.
6. **Limpieza:** Entorno destruido exitosamente mediante `terraform destroy`.