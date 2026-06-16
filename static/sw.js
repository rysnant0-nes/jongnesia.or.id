const CACHE = "jongnesia-v1";

self.addEventListener("install", function (e) {
  e.waitUntil(
    caches.open(CACHE).then(function (cache) {
      return cache.addAll(["/", "/admin/", "/favicon.png", "/manifest.json"]);
    })
  );
});

self.addEventListener("activate", function (e) {
  e.waitUntil(
    caches.keys().then(function (keys) {
      return Promise.all(
        keys.filter(function (k) {
          return k !== CACHE;
        }).map(function (k) {
          return caches.delete(k);
        })
      );
    })
  );
});

self.addEventListener("fetch", function (e) {
  e.respondWith(
    caches.match(e.request).then(function (r) {
      return r || fetch(e.request).then(function (res) {
        return caches.open(CACHE).then(function (cache) {
          if (e.request.method === "GET") {
            cache.put(e.request, res.clone());
          }
          return res;
        });
      });
    }).catch(function () {
      return caches.match("/");
    })
  );
});
