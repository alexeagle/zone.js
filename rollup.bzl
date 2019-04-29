load("//lib:rollup.bzl", "rollup_bundle")
def rollup(bundles):
    [
        rollup_bundle(
            name = b,
            entry_point = bundles[b],
            globals = {
                "electron": "electron",
            },
        )
        for b in bundles
    ]
