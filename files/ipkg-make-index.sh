#!/usr/bin/env bash
set -e

pkg_dir=$1

if [[ -z "$pkg_dir" || ! -d "$pkg_dir" ]]; then
    echo "Usage: ipkg-make-index <package_directory>" >&2
    exit 1
fi

empty=1

for pkg in $(find "$pkg_dir" -name '*.ipk' | sort); do
    empty=
    name="${pkg##*/}"
    name="${name%%_*}"
    [[ "$name" == "kernel" || "$name" == "libc" ]] && continue

    echo "Generating index for package $pkg" >&2

    file_size=$(stat -L -c%s "$pkg")
    sha256sum=$(sha256sum "$pkg" | awk '{print $1}')

    # 安全处理文件路径（去掉前缀 ./ 和反斜杠）
    sed_safe_pkg=$(echo "$pkg" | sed -e 's|^\./||' -e 's|/|\\/|g')

    # 提取 control 信息并插入其他字段
    tar -xzOf "$pkg" ./control.tar.gz | tar -xzOf - ./control | \
    sed -e "s/^Description:/Filename: $sed_safe_pkg\\
Size: $file_size\\
SHA256sum: $sha256sum\\
Description:/"

    echo ""
done

[ -n "$empty" ] && echo
exit 0

