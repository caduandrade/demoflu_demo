'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "e755bf319b0b319920efd19672ffabd0",
"index.html": "55226f8b4cf77e092a4049aac2057b2a",
"/": "55226f8b4cf77e092a4049aac2057b2a",
"main.dart.js": "4cb3e0a3c5b8e66797b18515a326bfd3",
"version.json": "dd5f8dac23e10b8525319d387f5808a3",
"assets/lib/main.dart": "a51ef5cc1a1275bf561eef9674594925",
"assets/lib/pages/macros/macros_page.dart": "8423da3409d27297abb18d58687c672a",
"assets/lib/pages/macros/main_example.dart": "ee13dfaf35d44dd8c9f7093e9a611e28",
"assets/lib/pages/get_started/get_started_page.dart": "eec2ba57932b0974beb500b75df83889",
"assets/lib/pages/bootstrap/boostrap.dart": "ad5a2db8c7b81ad4aafa6351b4b95861",
"assets/lib/pages/bootstrap/empty_main.dart": "df3579097e3bf704284bdc395d90ab29",
"assets/lib/pages/bootstrap/simple_main.dart": "c4fe27326420e1f18c9924ce21a3b07b",
"assets/lib/pages/bootstrap/simple_get_started_page.dart": "19ef34dd1c3895d965b19a6b92fdfc64",
"assets/lib/pages/code/code_page.dart": "781311bedfe419c3c677298ffddc8d10",
"assets/lib/pages/code/simple_code_page.dart": "155671a8d2531359db1fc639abe4be63",
"assets/lib/pages/code/fonts.txt": "19ecba97afed8d061b061fd8a0d112ca",
"assets/lib/pages/code/assets.txt": "ecf19db1f2f3b91253a9559b468a451c",
"assets/lib/pages/mark/mark_page.dart": "021ee2ba42490d964c4d0a870784af1f",
"assets/lib/pages/mark/mark_example.dart": "1a2cb5ba6f6cab8ea95bf41c4a09ec87",
"assets/lib/pages/text/text_page.dart": "1c4d1db78fb36470fdc8b7223a4c0de6",
"assets/lib/pages/banner/banner_page.dart": "1801607149705f116b3c1f688813ac3f",
"assets/lib/pages/bullets/bullets_page.dart": "1a5b816fb93f65a49192b2ff4c982f7f",
"assets/lib/pages/console/console_example.dart": "6272f55ae7022ecef3bbade200cc8a8c",
"assets/lib/pages/console/console_page.dart": "038eb49ce1f9a0c6f0302b9b9476af02",
"assets/lib/pages/build_for_web/build_for_web.dart": "5e3f2aa09e5d750c9f22acb4e4702946",
"assets/lib/pages/build_for_web/build_for_web.txt": "2c5b52188320f1480e269c21afddbbd9",
"assets/lib/pages/stateless/stateless_example.dart": "84a3fe2066f6a41ef8c8505e186c4894",
"assets/lib/pages/stateless/stateless_page.dart": "483b07a099bfea56f603a1b627078a32",
"assets/lib/pages/stateful/stateful_example.dart": "42617b8a37464e07efd26d95b4470e7a",
"assets/lib/pages/stateful/stateful_page.dart": "fbf47f03fe4076a2c530f8a98ea654b9",
"assets/lib/pages/listenable/listenable_example.dart": "78a56cd33525c2d91ac1980ab3d7ba99",
"assets/lib/pages/listenable/listenable_page.dart": "ed8d3c0cafefa77f8b865db4d1a7a9c7",
"assets/lib/pages/margin/margin_page.dart": "ac5c0933f21fe838a499a56856003fe7",
"assets/lib/pages/not_resizable/not_resizable_example.dart": "6dc46f7fb2239a08d857a01e98a431eb",
"assets/lib/pages/not_resizable/not_resizable_page.dart": "e46fa18e623bfb0b7c7a2f7f8383283d",
"assets/lib/pages/border/border_page.dart": "f394026140239b0d072a1de7ca324d83",
"assets/lib/pages/group/group_page.dart": "52dbc8ccb935260c726a17e619c00c81",
"assets/lib/pages/page/page.dart": "b0e5fb5b7dd31c0adb81e6323ec8c2c6",
"assets/lib/pages/page/empty_page.dart": "b72012b799e13d57f9a3cda6119a924d",
"assets/fonts/RobotoMono-Regular.ttf": "5b04fdfec4c8c36e8ca574e40b7148bb",
"assets/fonts/RobotoMono-Bold.ttf": "90190d91283189e340b2a44fe560f2cd",
"assets/fonts/RobotoMono-Italic.ttf": "0c4f4d670401518c500b1132d217fcab",
"assets/fonts/RobotoMono-BoldItalic.ttf": "ff657358db1650242d3896f4e6a17cb1",
"assets/fonts/MaterialIcons-Regular.otf": "96818a341448c02ad891967f4251c47c",
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
"assets/FontManifest.json": "86d9cebaf06dcb175171f988e6969f98",
"assets/NOTICES": "590726c376d74db8770bf4ea45424ed3",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"manifest.json": "2e7ba13f61f0ec59ac247e4f1dc66a21"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
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
