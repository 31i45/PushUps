# PushUps Counter

A beautiful and simple pushups counting application. Track your daily pushups with an elegant interface and seamless data persistence.


## 🌟 Features
- Simple and intuitive click-to-count interaction
- Elegant monthly calendar view to track historical data
- Automatic data synchronization
- Month-specific theme colors (flower-inspired aesthetics)
- Mobile-friendly design


## 🚀 Try It Out
- Official instance: [https://pushups.31i45.top](https://pushups.31i45.top)
- GitHub Pages demo: [https://31i45.github.io/PushUps/](https://31i45.github.io/PushUps/) (demo only)


## 🛠️ Deployment
Deployed on Raspberry Pi using CasaOS. The project structure is as follows:

```
/DATA/AppData/pushups/
--data-files          # Stores user data (JSON files)
  --f5e4.json         # Example user data file (4-character hex identifier)
--default.conf        # Nginx configuration
--docker-compose.yml  # Docker compose configuration
--Dockerfile          # Docker build file
--index.html          # Main application file
```

### Permissions Setup
Ensure proper permissions for data storage:
```bash
sudo chown -R 101:101 /DATA/AppData/pushups/data-files/
```


## 📝 Usage
1. Open the application
2. Use the auto-generated 4-character hex code (or enter an existing one)
3. Click anywhere to count pushups
4. View historical data in the monthly calendar at the bottom


The application automatically saves your daily counts and syncs them to ensure data persistence across sessions.
