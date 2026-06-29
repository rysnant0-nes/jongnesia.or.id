const CACHE = "jongnesia-v1";
const PRECACHE_URLS = ["/", "/admin/", "/favicon.png", "/manifest.json"];

self.addEventListener("install", function (e) {
  e.waitUntil(
    caches.open(CACHE).then(function (cache) {
      return cache.addAll(PRECACHE_URLS);
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
  if (e.request.method !== "GET") return;

  e.respondWith(
    fetch(e.request).then(function (res) {
      return caches.open(CACHE).then(function (cache) {
        cache.put(e.request, res.clone());
        return res;
      });
    }).catch(function () {
      return caches.match(e.request).then(function (r) {
        return r || caches.match("/");
      });
    })
  );
});
