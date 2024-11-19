# Makefile for managing Vagrant machines

# Default vagrant command
VAGRANT = vagrant

# Targets
.PHONY: up halt destroy status clean

# Bring up the Vagrant environment
up:
	@$(VAGRANT) up

# Halt (stop) the Vagrant environment
halt:
	@$(VAGRANT) halt

# Destroy the Vagrant environment in the current directory
destroy:
	@$(VAGRANT) destroy -f

# Show the status of the Vagrant machines
status:
	@$(VAGRANT) status

# Clean up any residual files if needed (optional target)
clean:
	@rm -rf .vagrant
