'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "12d261d89c7569b1803849dc695fdced",
"assets/AssetManifest.json": "704f8c03704379852c0f4b4b39044344",
"assets/assets/fonts/Afacad/Afacad-Italic-VariableFont_wght.ttf": "87d1dfed742d2669846347bc42003b43",
"assets/assets/fonts/Afacad/Afacad-VariableFont_wght.ttf": "74ad078bfbf23ddaa9e746ad7c0d4f31",
"assets/assets/fonts/Koulen/Koulen-Regular.ttf": "f4ca7b52e1cc9fe0df9958deaafe0cc7",
"assets/assets/gif/Wanderlust-unscreen.gif": "41fa731b15538c7f0adbb50706a40e30",
"assets/assets/images/heroImg-bgremoved.png": "a3dd4275a0326b08fda6f4d9d1a30dc7",
"assets/assets/images/heroImg-bgremoved_deblurred_upscaled.png": "11bfc4a2cb019382777b931d320ff329",
"assets/assets/images/heroImg.jpg": "84f7fbfec05114e1135bc73bbf2fe6c5",
"assets/assets/images/india.png": "79e3010f0ea67140bc49beb7f33850eb",
"assets/assets/images/instaIcon.png": "1e5cf4e8f224dd385200248c810eb05c",
"assets/assets/images/sliderImage4.jpeg": "099d21a62d0113dd62557d6f7f042707",
"assets/assets/images/sliderImage5.jpeg": "8308464b0223743f4eaff0038614f73b",
"assets/assets/images/sliderImage6.jpeg": "2c5ea13e1cd167d3e8f17a33994f794c",
"assets/assets/images/sliderImage7.jpeg": "705c3dc45bcf5f872e279fe82950e27c",
"assets/assets/images/sliderImage8.jpeg": "35b63ff3adc2916ce7852a1a1e689ab2",
"assets/assets/images/sliderImg1.jpg": "3c1e883783e0f0e10239ec7dedd11160",
"assets/assets/images/sliderImg2.jpg": "b102d891fe052777427831d0b64dbd17",
"assets/assets/images/sliderImg3.jpg": "a6790fee21267cab1421b9bb956e0fb5",
"assets/assets/svg/insta-icon.svg": "d46bb0a4559f5d5bca7d1b32ab0b184f",
"assets/assets/svg/insta.svg": "d02f1f3bcd9d982e5d00295bc43a2a57",
"assets/assets/svg/instagram.svg": "d46bb0a4559f5d5bca7d1b32ab0b184f",
"assets/assets/video/video.mp4": "ba6ba27e48459c1333acc6f505e4093c",
"assets/FontManifest.json": "9a7e8b916ff07b76e56f809ee23ba23c",
"assets/fonts/MaterialIcons-Regular.otf": "88d31904abd320c634a10b874e3a4ca6",
"assets/NOTICES": "1f1f0afe7b219ef0dd8d91be02d81056",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/fluttertoast/assets/toastify.css": "910ddaaf9712a0b0392cf7975a3b7fb5",
"assets/packages/fluttertoast/assets/toastify.js": "18cfdd77033aa55d215e8a78c090ba89",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "663bbb1c08918178d75492a51d44b8ca",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a5d7457fda15b7622c14f432ba63039a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "b72c617acdf2227c8b1413215f620711",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "188ee182fb14672576f0295164168c11",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "668d7791a030ea809b1e739d47c21962",
"icons/Icon-512.png": "6bbfc128ac8d7b5d8cec6f1ab1f20056",
"icons/Icon-maskable-192.png": "668d7791a030ea809b1e739d47c21962",
"icons/Icon-maskable-512.png": "6bbfc128ac8d7b5d8cec6f1ab1f20056",
"index.html": "41e318507d588796b666c80d4837a1ad",
"/": "41e318507d588796b666c80d4837a1ad",
"main.dart.js": "0dfc6b5b224ea6b953118510917d3fd6",
"manifest.json": "fe048b609965cb3f5de45b156353a41a",
"version.json": "c922649a448dce0dfa8f1d3e290a4e37"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
