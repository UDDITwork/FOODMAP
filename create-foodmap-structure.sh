// create-foodmap-structure.sh

#!/bin/bash

# Create root directory
mkdir foodmap && cd foodmap

# Create frontend structure
mkdir -p frontend/src/{api,components/{common,maps,restaurant,orders},screens/{auth,home,restaurant,orders,profile},redux/slices,navigation,utils,config} frontend/assets

# Create backend structure
mkdir -p backend/src/{config,controllers,models,routes,services,middleware,utils} backend/tests

# Create common and docs directories
mkdir -p common/{types,constants} docs/api

# Create frontend files
touch frontend/src/api/{auth,orders,restaurants,config}.ts
touch frontend/src/components/common/{Button,Card,Input,Loader}.tsx
touch frontend/src/components/maps/{MapView,Marker}.tsx
touch frontend/src/components/restaurant/{MenuCard,RestaurantCard}.tsx
touch frontend/src/components/orders/{OrderCard,TrackingView}.tsx
touch frontend/src/screens/auth/{Login,OtpVerify}.tsx
touch frontend/src/screens/home/{Home,RestaurantList}.tsx
touch frontend/src/screens/restaurant/{Menu,Details}.tsx
touch frontend/src/screens/orders/{Cart,Checkout,TrackOrder}.tsx
touch frontend/src/screens/profile/Profile.tsx
touch frontend/src/redux/slices/{authSlice,cartSlice,orderSlice}.ts
touch frontend/src/redux/store.ts
touch frontend/src/navigation/{AppNav,AuthNav,types}.ts
touch frontend/src/utils/{location,storage,validation}.ts
touch frontend/src/config/{constants,theme}.ts

# Create backend files
touch backend/src/config/{database,server}.ts
touch backend/src/controllers/{authController,orderController,restaurantController}.ts
touch backend/src/models/{User,Order,Restaurant,MenuItem}.ts
touch backend/src/routes/{auth,orders,restaurants}.ts
touch backend/src/services/{authService,orderService,notificationService}.ts
touch backend/src/middleware/{auth,error,validation}.ts
touch backend/src/utils/{logger,helpers}.ts

# Create common files
touch common/types/{order,user}.ts
touch common/constants/index.ts

# Create docs files
touch docs/api/swagger.yaml
touch docs/setup.md
# Install dependencies
echo "Installing dependencies..."

npm init -y
npm install react react-native react-native-cli react-navigation/native react-navigation/stack redux @reduxjs/toolkit react-native-maps @react-native-community/async-storage @gorhom/bottom-sheet react-native-reanimated react-native-gesture-handler react-native-fast-image express cors helmet compression express-validator jsonwebtoken bcrypt pg typeorm --save
echo "Dependencies installed!"

echo "Project structure and dependencies setup complete!"

# Create initial package.json files
echo '{
  "name": "foodmap-frontend",
  "version": "1.0.0",
  "private": true
}' > frontend/package.json

echo '{
  "name": "foodmap-backend",
  "version": "1.0.0",
  "private": true
}' > backend/package.json

# Create git repository
git init
echo "node_modules/
.env
.DS_Store
build/
dist/" > .gitignore

# Make the script executable
chmod +x create-foodmap-structure.sh