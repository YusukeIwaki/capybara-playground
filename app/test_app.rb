require 'sinatra/base'

class TestApp < Sinatra::Base
  get('/') { '<h1>It works!</h1>' }

  get('/alert') {
    <<~HTML
    <html>
    <head>
    <script type="text/javascript">
    window.addEventListener('DOMContentLoaded', () => {
      document.querySelector('button').addEventListener('click', (evt) => {
        alert('Hoge');
        document.getElementById('result').innerText = `clicked`;
      }, false);
    }, false);
    </script>
    </head>
    <body>
      <button>Click me</button>
      <span id="result"></span>
    </body>
    </html>
    HTML
  }

  get('/confirm_twice') {
    <<~HTML
    <html>
    <head>
    <script type="text/javascript">
    window.addEventListener('DOMContentLoaded', () => {
      document.querySelector('button').addEventListener('click', (evt) => {
        if (confirm('Are you sure?') && confirm('Are you really sure?')) {
          document.getElementById('result').innerText = `clicked`;
        }
      }, false);
    }, false);
    </script>
    </head>
    <body>
      <button>Click me</button>
      <span id="result"></span>
    </body>
    </html>
    HTML
  }

  get('/title') {
    title = params[:title] || 'DEFAULT TITLE'
    <<~HTML
    <html>
    <head>
    <title>#{title}</title>
    </head>
    <body>
    <h2>This page is title:#{title}</h2>
    </body>
    </html>
    HTML
  }

  get('/iframe') {
    <<~HTML
    <html>
    <head>
    <title>iframe owner page</title>
    </head>
    <body>
    iframe
    <iframe name="frame1" src="/title"></iframe>
    </body>
    </html>
    HTML
  }
end
