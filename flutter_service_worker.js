'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon.png": "5dcef449791fa27946b3d35ad8803796",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"index.html": "197727179e3ed63b56103fb444be9848",
"/": "197727179e3ed63b56103fb444be9848",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"manifest.json": "3b4ed57bb00cd5a251fca12543af0fa6",
"version.json": "b67be12c28c44f859341e794bbfea6d4",
"assets/FontManifest.json": "436e43a72669a7a82a41bd72c204c7d7",
"assets/fonts/MyPortfolio.ttf": "3ef0feba51abe388aff304ddf811d367",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/AssetManifest.json": "12e960bbe011fd5a1d52091f5d1ad779",
"assets/assets/icons/strasapp.png": "7d4d12d2d8a00fd0534dfd6417df00ca",
"assets/assets/icons/myuca.png": "e0eb8de621dbe4b113148d234ac94a4f",
"assets/assets/icons/manga.png": "293241fd7d54acc0b42adcad4ee4dc3c",
"assets/assets/icons/m.png": "285a7464af15b253a62786da53dc1136",
"assets/assets/avatar.png": "cfc0f05b02d165934319e73fb64d65cd",
"assets/assets/articles/oauth.png": "c726e42be15f6aac6695b0be802773cc",
"assets/assets/articles/firebase.png": "d7c871d2abf22ac656930dfaea9ce0fd",
"assets/assets/articles/tdd_in_flutter.png": "812f4fd886145a7265ebbfc7d0e01cb7",
"assets/assets/articles/twitch.jpeg": "81638cae714a34266d4399cbc5b7ff82",
"assets/assets/projects/game_deals.png": "a3984a70128a6f35c454b80980bce8ab",
"assets/assets/projects/ui_chall.png": "23c3c9f91b84457fbea844d3b8c7e209",
"assets/assets/projects/pokedex.png": "264b7a53ecd69cb7ff392f0362007c2f",
"assets/assets/projects/temopedia.png": "613e5e6a830eaffbd5ccde4a36d1838b",
"assets/assets/projects/drinking.png": "65541579083dc891f2ddd54de543a705",
"assets/assets/projects/todo.png": "53b5dd66a3e8c1163f230fd5802a60fb",
"assets/assets/projects/strasapp.png": "164718ef0d0ff9d900f91c50219e61d5",
"assets/assets/projects/myuca.png": "9c82ed63b1ff446fc9f6d36b4615c84c",
"assets/assets/projects/manga.png": "9c6f59ffc0e2960f3137b293390d42bd",
"assets/assets/projects/m.png": "77b2282fd2aa960fd1905c2aa9bc0e6e",
"assets/assets/projects/ygo_collection_manager.png": "50a2132a0d690aa568e7c4fa346ccb86",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/NOTICES": "a7b3ac9b9ee3e5ccef6b99206634950e",
"styles.css": "c109678ae27e9fbb3662e0bbf010cc19",
"main.dart.js": "8d9d3d21c921eeb33b2869d58823100b"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
