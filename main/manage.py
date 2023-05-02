from init import createApp
from modules.user import User

app = createApp()

if __name__ == '__main__':
    # TODO 开启调试模式（热部署）
    app.run(debug=True)
