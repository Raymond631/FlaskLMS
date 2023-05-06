from init import createApp

app = createApp()

if __name__ == '__main__':
    # TODO 开启调试模式（热部署）
    app.run(host='0.0.0.0', port=5000, debug=True)
