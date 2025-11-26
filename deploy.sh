#!/bin/bash

# SUNBAY Official Website Quick Deploy Script

echo "🚀 SUNBAY Deployment Script"
echo "======================="
echo ""

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null
then
    echo "❌ Vercel CLI not installed"
    echo "📦 Installing Vercel CLI..."
    npm install -g vercel
    echo "✅ Vercel CLI installed"
else
    echo "✅ Vercel CLI already installed"
fi

echo ""
echo "Please select deployment type:"
echo "1) Preview deployment"
echo "2) Production deployment"
read -p "Enter option (1 or 2): " choice

case $choice in
    1)
        echo ""
        echo "🔄 Starting preview deployment..."
        vercel
        ;;
    2)
        echo ""
        echo "🔄 Starting production deployment..."
        vercel --prod
        ;;
    *)
        echo "❌ Invalid option"
        exit 1
        ;;
esac

echo ""
echo "✅ Deployment completed!"
echo "🌐 Check the deployment URL above"
