# Entregables LAB06 - Matías Villegas

1. **Recursos de Backend Creados:**
   - Bucket S3 de Estado: `tfstate-formatec-101374115496-mv`
   - Tabla DynamoDB de Lock: `tflock-formatec-mv`
2. **Bucket de Aplicación con Estado Remoto:** `app-formatec-101374115496-mv`
3. **Explicación de Conceptos:**
   - **State Local vs Backend Remoto:** El estado local guarda la infraestructura en un archivo `terraform.tfstate` en la máquina del desarrollador, lo que impide el trabajo colaborativo. El backend remoto centraliza dicho estado en S3 para que todo el equipo trabaje sobre la misma información.
   - **Rol del Locking (DynamoDB):** DynamoDB registra un bloqueo temporal durante ejecuciones de `apply` o `plan`, impidiendo que dos desarrolladores modifiquen la infraestructura de forma simultánea y corrompan el estado.
4. **Limpieza:** Ambos entornos borrados exitosamente mediante `terraform destroy`.