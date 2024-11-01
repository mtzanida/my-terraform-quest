## Terraform Variables vs Locals

### Terraform Variables

- **Definition**: Variables are placeholders for values in Terraform configurations.
- **Characteristics**:
  - **Input Scope**: Defined in the root module and passed to child modules.
  - **User-defined**: Users can define their own values.
  - **Default Values**: Can have default values, making them optional.

### Terraform Locals

- **Definition**: Locals are named values used within a module.
- **Characteristics**:
  - **Temporary Scope**: Exist only within the module they are defined in.
  - **Readability**: Simplify complex expressions for clarity.
  - **Immutability**: Once defined, local values cannot change.

### Key Differences

- **Purpose**: Variables allow customizable input at runtime.
  Locals store internal calculations and values.
- **Scope**: Variables can be passed between modules.
  Locals are confined to the module where declared.
- **Flexibility**: Variables provide dynamic input.
  Locals focus on simplifying configuration logic.

---

Variables provide customizable inputs.

Locals simplify code logic.
