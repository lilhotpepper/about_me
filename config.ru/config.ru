use Rack::Static,
  :urls => ["/stuff.css", "/images", "/curriculum.html"],
  :root => "public"
  
run lambda { |env|
  [
    200,
    {
      'Content-Type' => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
   },
  File.open('public/home.html', File::RDONLY)
  ]
}