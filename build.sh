#!/bin/bash

# Quarto Website Build and Preview Script
# For Cresko Laboratory Website

echo "======================================"
echo "Cresko Laboratory Website Builder"
echo "======================================"
echo ""

# Function to check if Quarto is installed
check_quarto() {
    if ! command -v quarto &> /dev/null; then
        echo "❌ Quarto is not installed!"
        echo "Please install Quarto from: https://quarto.org/docs/get-started/"
        exit 1
    else
        echo "✅ Quarto is installed: $(quarto --version)"
    fi
}

# Function to render the website
build_site() {
    echo "Building website..."
    quarto render
    if [ $? -eq 0 ]; then
        echo "✅ Website built successfully!"
        echo "Output files are in the 'docs/' directory"
    else
        echo "❌ Build failed. Please check for errors above."
        exit 1
    fi
}

# Function to preview the website
preview_site() {
    echo "Starting preview server..."
    echo "The website will open in your browser."
    echo "Press Ctrl+C to stop the server."
    quarto preview
}

# Function to clean build files
clean_build() {
    echo "Cleaning build files..."
    rm -rf docs/
    rm -rf .quarto/
    rm -rf *_files/
    rm -rf *_cache/
    echo "✅ Build files cleaned!"
}

# Main menu
show_menu() {
    echo "What would you like to do?"
    echo ""
    echo "1) Preview website (with live reload)"
    echo "2) Build website (generate HTML files)"
    echo "3) Clean build files"
    echo "4) Check Quarto installation"
    echo "5) Exit"
    echo ""
    read -p "Enter your choice (1-5): " choice
    
    case $choice in
        1)
            check_quarto
            preview_site
            ;;
        2)
            check_quarto
            build_site
            ;;
        3)
            clean_build
            ;;
        4)
            check_quarto
            ;;
        5)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            echo ""
            show_menu
            ;;
    esac
}

# Run the script
show_menu
