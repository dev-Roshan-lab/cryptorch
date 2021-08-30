'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "7b5088027e9209563fb557eea0e73354",
".git/config": "c7b5c3960e7a4e4fe0fc56bb498d5e49",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "6b64c9457bb8fb632fff7cb732d3b1e5",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "153132f5b22f59d9f9b8de1fa654a8b9",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "93dca8b9161c597f1bd17ba70efe772a",
".git/logs/refs/heads/master": "82755cf7d6939002111e3e0428a88013",
".git/logs/refs/heads/website": "2ac6b06333e806a470a85291eb6c3525",
".git/logs/refs/remotes/origin/website": "7a7b7dbed8cc3b2d14894425225ef8e2",
".git/objects/05/0748a7a53c3f3b91739453e29392fd558d595a": "3401364fab16a3caac617d70cae9e856",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/23/1b555bb0e5f2599e60be11735e620f1becb20b": "4fb36e6d4495786b4531d72dfd42890f",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/46/c429d0b33a155424c93bce370f0625b3a59c09": "8bd56002ea7894cb69be941807574a62",
".git/objects/47/d66ecd2506f1da0e7e2e470483eaae69c3d958": "5da5debfe67cc2d400ea42b3e4e693f1",
".git/objects/4f/01b4d4b3fa62ddc87e765c7f7b67c50076ddbd": "6c12fa9bda722fe3f170fd615d8cd6c8",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/87/a6437b412217ab5a29b4e925d24d734097303d": "da386024d4db867320bd60756c4a1c15",
".git/objects/88/09e12532ded641a9cca6fbb9ea7b56300237e5": "e460f1d4c9298f89c02d21db3df358bc",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8e/f7d07a55a6aa5f3205bc915f9e9c3fa5416fd9": "18041c23292322c55a882e97f88a104f",
".git/objects/90/39cfffe25b46bd7579c6ed121db288fa363ab7": "e2e2c185df175e43e158e1c6231cb1ac",
".git/objects/9a/6844661598bd0ac7a26a64cfd93e8ecf4a8fbd": "a9fb6fc5fabeb4857d06fcadb9db30c0",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a4/e8c93e64012ed6d2014b5b3ae551aa88da25b6": "a5da54e7d29048b3207fa0bd07ab0679",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/c4/0cc13c9689cdafc2113ec2c70f036227c837c2": "f8bc255a4a2ea12a9e99e18f5e178d46",
".git/objects/ca/91924e14f4a6bf162314971b5d9025fbe585b7": "4c8cfc50b9da7eb16a489a175fa750f8",
".git/objects/cf/1e6378e7eaf9c6dcb9f45468b068c9a8d3c2f7": "2f37cdfa84c087b5acc6760cdafdd80d",
".git/objects/d0/79d7bc48610f1c19aebb31ebf7d9ea1aee4aa2": "f77a5f013b231a857bfbf342ed6a97d3",
".git/objects/d1/ae106ece4f868dd920cfa5f142d15692205467": "cfe005bd9b9fc9ad4421f3a2235b49ba",
".git/objects/d4/f911c187c440bd3820ba3ae73367cf417a552a": "f469f255ec09708152f2863bbdfb41f1",
".git/objects/d7/1990ed7aa4107e1e16e319f06d341902cf9802": "3565d96919d4aefaa67d43daa1b8dfbb",
".git/objects/dc/29c52e6f86bc8f230961b728922c0d6e211da0": "9209686bc3d55ea77f4c4a929285deb8",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/f1/58339c49f252144b0e665ab8aed9b52b99dca3": "fba69544fe09d78646ccfa6606e51ef6",
".git/objects/f7/e4ce56fe8728dd2afb307cb2d04ddc565fbb63": "458e7204046b2dfce92b50b2fd3c92a1",
".git/refs/heads/master": "20b712a9f1dfabc3429f7592fad6acc4",
".git/refs/heads/website": "20b712a9f1dfabc3429f7592fad6acc4",
".git/refs/remotes/origin/website": "20b712a9f1dfabc3429f7592fad6acc4",
"assets/AssetManifest.json": "87edeab1c06592789f2e2abfc9d64d79",
"assets/assets/coin0.png": "eadda5d9e5d4abddd157b29ed2574d5c",
"assets/assets/coin1.png": "b3edea60321960c27074203038afc9d8",
"assets/assets/coin2.png": "41515e785a306192381128aebed6a326",
"assets/assets/coin3.png": "73cfc7538528f649d0ba9e3cd31aba52",
"assets/assets/coin4.png": "af1cbd1db5f19d999c3f934ba8e70eba",
"assets/assets/coin5.png": "326d938acf472287a0c01e23ec95b078",
"assets/assets/cpu.png": "595aed747e67201e435e7f478e421dae",
"assets/assets/rapidapi.png": "f5bad932d3328248e143abffd6c05746",
"assets/assets/right-arrow.png": "168551160dff2d39675a3c520ad3ee40",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "e50acdcc874318fcb28e57e90e94decc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "595aed747e67201e435e7f478e421dae",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "c40a10ca903e0abd744d30407be45f3d",
"/": "c40a10ca903e0abd744d30407be45f3d",
"main.dart.js": "a7ee928285774b1d58ed9d97d3eeb7f6",
"manifest.json": "de1fdc8dc827b150a535659bd2c1e48d",
"version.json": "6525f4623769ef6afc3733042d8b7bfc"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
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
