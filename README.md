
# Scientific Project Template for Honest Science

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)

This repository provides a template for initializing a scientific project based on honest science principles. It includes a containerized development environment, integrated documentation workflow, and organized structure for reproducible research.

## Project Structure

- `code/` - Source code and scripts for your analyses
- `data/` - Raw and processed data files  
- `docs/` - Documentation, protocols, and integrated reports (Quarto-based)
  - `design/` - Scientific context and protocol files
  - `manuscript/` - Generated reports and manuscripts
- `results/` - Output results, figures, and tables
- `.devcontainer/` - VS Code development container configuration
- `Dockerfile` - Container setup with Python, R, Quarto, and scientific tools

## Development Environment

This template uses **VS Code development containers** for a consistent, reproducible environment. The container includes:

- Python 3 with scientific packages (numpy, pandas, matplotlib, jupyterlab)
- R statistical computing environment
- Quarto for integrated documentation and reporting
- Pandoc and LaTeX for document generation
- Git LFS for handling large files

### Getting Started

1. **Prerequisites**: Install Docker and VS Code with the Dev Containers extension
2. **Clone this repository**:
   ```sh
   git clone https://github.com/algolife-research/scientific_project_template.git
   cd scientific_project_template
   ```
3. **Open in VS Code**: VS Code will prompt to reopen in the development container
4. **Initialize Git LFS** (for large files):
   ```sh
   git lfs install
   ```

## Documentation Workflow

The `docs/` folder contains a Quarto-based system for creating integrated scientific documents:

- **Protocols**: Store in `docs/context/Protocol.md`
- **Scientific context**: Store in `docs/context/Scientific_Context.md` 

- **Compile to PDF/HTML**:
  ```sh
  quarto render docs/ --to pdf
  quarto render docs/ --to html
  ```

See `docs/README.md` for detailed compilation instructions.

## License

This project is licensed under the MIT License.
See the full license text in the `LICENSE` file: [LICENSE](./LICENSE).
