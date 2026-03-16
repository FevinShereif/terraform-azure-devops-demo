	
	- name: Terraform Plan
  run: |
    terraform plan \
      -refresh=false \
      -var="vm_size=${{ github.event.inputs.vm_size }}" \
      -var="os_type=${{ github.event.inputs.os_type }}" \
      -var="disk_size=${{ github.event.inputs.disk_size }}" \
      -var="location=${{ github.event.inputs.location }}" \
      -var="vm_name=devvm01" \
      -var="admin_username=azureuser" \
      -var="admin_password=Password123!" \
      -no-color > plan.txt

    cat plan.txt