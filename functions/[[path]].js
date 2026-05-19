export async function onRequest(context) {
    const url = new URL(context.request.url);

    // 静的ファイルはそのまま返す
    if (url.pathname.match(/\.(js|css|png|jpg|jpeg|svg|ico|json|wasm)$/)) {
        return context.next();
    }

    // Flutter Web SPA fallback
    return context.env.ASSETS.fetch("/index.html");
}
