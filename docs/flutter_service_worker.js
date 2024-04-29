'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"main.dart.js": "b63d6d430712821a0baad1ba29cc8cc7",
"version.json": "dd5f8dac23e10b8525319d387f5808a3",
"assets/lib/main.dart": "bea785de444fdb5458dc970030fe1e6c",
"assets/lib/pages/macros/macros_page.dart": "69a5faaa6e2945153d36d5b7e0779cb6",
"assets/lib/pages/macros/main_example.dart": "ee13dfaf35d44dd8c9f7093e9a611e28",
"assets/lib/pages/get_started/get_started_page.dart": "be87787155e8763b61b2e2757871cca7",
"assets/lib/pages/bootstrap/boostrap.dart": "f18e183cda2fdf77c38e52fe934c257a",
"assets/lib/pages/bootstrap/empty_main.dart": "df3579097e3bf704284bdc395d90ab29",
"assets/lib/pages/bootstrap/simple_main.dart": "c4fe27326420e1f18c9924ce21a3b07b",
"assets/lib/pages/bootstrap/simple_get_started_page.dart": "26b4b3e02f2cb2619c4780c7ef1e3fcd",
"assets/lib/pages/code/code_page.dart": "b953b986900ca2e6c6e2425a29cb2682",
"assets/lib/pages/code/simple_code_page.dart": "2e1e2fdd41dc28e2675559be60e86b74",
"assets/lib/pages/code/assets.txt": "ecf19db1f2f3b91253a9559b468a451c",
"assets/lib/pages/code/fonts.txt": "19ecba97afed8d061b061fd8a0d112ca",
"assets/lib/pages/mark/mark_page.dart": "5f444ab67fda553e5dacff839aca9fd5",
"assets/lib/pages/mark/mark_example.dart": "1a2cb5ba6f6cab8ea95bf41c4a09ec87",
"assets/lib/pages/text/text_page.dart": "9795bb8bf3b8f3472b8cac66150c2cfd",
"assets/lib/pages/banner/banner_page.dart": "07f0e7396da834529d46ff6004c1c75a",
"assets/lib/pages/bullets/bullets_page.dart": "ddf3e29e0d154b472969e67c5dd3a682",
"assets/lib/pages/console/console_example.dart": "6272f55ae7022ecef3bbade200cc8a8c",
"assets/lib/pages/console/console_page.dart": "c11120f9be4056e2c63b021394ca04b6",
"assets/lib/pages/build_for_web/build_for_web.txt": "2c5b52188320f1480e269c21afddbbd9",
"assets/lib/pages/build_for_web/build_for_web.dart": "4316611c387ab0de089ff94fbfade406",
"assets/lib/pages/stateless/stateless_example.dart": "84a3fe2066f6a41ef8c8505e186c4894",
"assets/lib/pages/stateless/stateless_page.dart": "38f513544590938f5447347cc5ffba08",
"assets/lib/pages/stateful/stateful_example.dart": "42617b8a37464e07efd26d95b4470e7a",
"assets/lib/pages/stateful/stateful_page.dart": "5cc6abdfa068ef35cc6b9089866bfc24",
"assets/lib/pages/listenable/listenable_example.dart": "78a56cd33525c2d91ac1980ab3d7ba99",
"assets/lib/pages/listenable/listenable_page.dart": "5a6aac807984b79e70ecb2a8ec0b2b6f",
"assets/lib/pages/margin/margin_page.dart": "0a5268637ab7bff2d2181fb27994caf4",
"assets/lib/pages/not_resizable/not_resizable_example.dart": "6dc46f7fb2239a08d857a01e98a431eb",
"assets/lib/pages/not_resizable/not_resizable_page.dart": "43d54bd7d6af9a6dd993c67379f430d8",
"assets/lib/pages/border/border_page.dart": "7b06754ce528cff96bf4d4569a8a7674",
"assets/lib/pages/group/group_page.dart": "4a8ef1136f40f3d9b6318eed5d6f4588",
"assets/lib/pages/page/page.dart": "826639b8c11e8439852e9a80aeb977a5",
"assets/lib/pages/page/empty_page.dart": "5ad1754aa745a33229e022f5fbab8fb7",
"assets/fonts/RobotoMono-Regular.ttf": "5b04fdfec4c8c36e8ca574e40b7148bb",
"assets/fonts/RobotoMono-Bold.ttf": "90190d91283189e340b2a44fe560f2cd",
"assets/fonts/RobotoMono-Italic.ttf": "0c4f4d670401518c500b1132d217fcab",
"assets/fonts/RobotoMono-BoldItalic.ttf": "ff657358db1650242d3896f4e6a17cb1",
"assets/fonts/MaterialIcons-Regular.otf": "291a4828f45ad83dff33106c7c5d57ca",
"assets/packages/flex_color_picker/assets/opacity.png": "49c4f3bcb1b25364bb4c255edcaaf5b2",
"assets/packages/syntax_highlight/grammars/sql.json": "957a963dfa0e8d634766e08c80e00723",
"assets/packages/syntax_highlight/grammars/dart.json": "b533a238112e4038ed399e53ca050e33",
"assets/packages/syntax_highlight/grammars/yaml.json": "7c2dfa28161c688d8e09478a461f17bf",
"assets/packages/syntax_highlight/grammars/json.json": "e608a2cc8f3ec86a5b4af4d7025ae43f",
"assets/packages/syntax_highlight/grammars/serverpod_protocol.json": "cc9b878a8ae5032ca4073881e5889fd5",
"assets/packages/syntax_highlight/themes/dark_vs.json": "2839d5be4f19e6b315582a36a6dcd1c3",
"assets/packages/syntax_highlight/themes/light_vs.json": "8025deae1ca1a4d1cb803c7b9f8528a1",
"assets/packages/syntax_highlight/themes/light_plus.json": "2a29ad892e1f54e93062fee13b3688c6",
"assets/packages/syntax_highlight/themes/dark_plus.json": "b212b7b630779cb4955e27a1c228bf71",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "1b4369470e33b9fc66c482b1b5ee120b",
"assets/AssetManifest.bin": "aa6438cb7f88feeabb7d2cebeade7a51",
"assets/AssetManifest.bin.json": "4fb760f1d58f4e56d9a53538a18d1f8b",
"assets/NOTICES": "73986cfa487226d74bd1cdcc474aa555",
"assets/FontManifest.json": "86d9cebaf06dcb175171f988e6969f98",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"manifest.json": "0867c3e13649ac4d06fe34b7b3ddce08",
"index.html": "ae227b50c631329947039715ff844372",
"/": "ae227b50c631329947039715ff844372"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
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
