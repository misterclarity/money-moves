/* Money Moves service worker — makes the installed app work offline. Version 34a46469d8 */
const CACHE = 'mm-34a46469d8';
const CORE = ["./", "index.html", "manifest.webmanifest", "icons/icon-192.png", "icons/icon-512.png", "icons/favicon-64.png"];
self.addEventListener('install', e => {
  e.waitUntil(caches.open(CACHE).then(c => c.addAll(CORE)).then(() => self.skipWaiting()));
});
self.addEventListener('activate', e => {
  e.waitUntil(caches.keys()
    .then(keys => Promise.all(keys.filter(k => k.startsWith('mm-') && k !== CACHE).map(k => caches.delete(k))))
    .then(() => self.clients.claim()));
});
const keep = (req, res) => {
  if (res && res.ok && res.type === 'basic') { const copy = res.clone(); caches.open(CACHE).then(c => c.put(req, copy)); }
  return res;
};
self.addEventListener('fetch', e => {
  const req = e.request;
  if (req.method !== 'GET') return;
  const url = new URL(req.url);
  if (url.origin !== self.location.origin) return;
  const scope = new URL(self.registration.scope);
  const isApp = url.pathname === scope.pathname || url.pathname === scope.pathname + 'index.html';
  if (isApp) {
    // the game page: newest version when online, cached copy when offline
    e.respondWith(fetch(req).then(res => keep(new Request(scope.href), res))
      .catch(() => caches.match(scope.href).then(r => r || caches.match('index.html'))));
    return;
  }
  if (url.pathname.endsWith('money-moves-offline.html')) return;   // big download: always from the network
  // everything else (icons, music, manifest): cache first, then network (and keep a copy)
  e.respondWith(caches.match(req).then(hit => hit || fetch(req).then(res => keep(req, res))));
});
