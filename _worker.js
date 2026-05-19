export default {
    async fetch(request, env) {
        const url = new URL(request.url);

        // 静的ファイルはそのまま返す
        if (url.pathname.match(/\.(js|css|png|jpg|jpeg|svg|ico|json|wasm)$/)) {
            return env.ASSETS.fetch(request);
        }

        // Flutter Web SPA fallback
        return env.ASSETS.fetch("/index.html");
    }
}
