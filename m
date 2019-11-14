Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE53EFC105
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 Nov 2019 08:56:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U5embMb+BlSnSXoRgXde0oIjoA3HFiEVe92IUecXRk8=; b=t0/przKC7qP84i
	x5XjIFrMK3z9q+oKzcee4boaRHQyPqWb0A/k6Dn9zxag+OSd4UW8qy/b9+0ECIBrJqBydpD7nk+VB
	LRSfmPqk3VbwGOQlUu0BNLaDxjpNdOcbt6amEpgC5g/hWcI8qcKF0pfTCXkQzLcBBse7UPn8xYEop
	p90t3uCoUuC7vht1P3vXOYlvzudNNbq9Rq9zyr5XDxnvbQtby95ly1yy4JXEfTE4FwUQJAUkyoA1H
	NMD8/8+1C1O/M/xc4Qz/rL3Gi1Jey65+1lX9nu5qyTqjRiXgrqYMXReezKo5PmJgZeJwHmgqwHa+w
	D2vFs7qWZLcx0W9q6r+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9zF-0001xB-7j; Thu, 14 Nov 2019 07:56:17 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9z5-0001wK-Fn
 for openwrt-devel@lists.openwrt.org; Thu, 14 Nov 2019 07:56:09 +0000
X-Originating-IP: 72.234.165.80
Received: from tb.home (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0760BFF802;
 Thu, 14 Nov 2019 07:55:53 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 Nov 2019 21:55:30 -1000
Message-Id: <20191114075529.2977-1-mail@aparcar.org>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_235607_662909_B4EB36C6 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] buildbot: signall.sh store usign.key as
 usign.sec
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The signall.sh script signs all files inside a tar via GPG and
signify-openbsd (similar to usign)e and attaches the signatures to the
same archive.

Using more recent versions of signify-openbsd requires a specific naming
schema for keys, private ending with .sec and public with .pub. This was
introduced at 763e1148f68f03cb2fa85d022500acf8c66af222[0].

This patch renames the stored key as usign.sec instead of usign.key. As
of the temporary nature of the key storing, this very unlikely breaks
any existing setups.

[0]: https://github.com/openbsd/src/commit/763e1148f68f03cb2fa85d022500acf8c66af222

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
Tested and working on Debian 10
https://buildmaster.aparcar.org/#/builders/79/builds/4/steps/64/logs/stdio

 scripts/signall.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/signall.sh b/scripts/signall.sh
index 269375f..8f39500 100755
--- a/scripts/signall.sh
+++ b/scripts/signall.sh
@@ -84,11 +84,11 @@ if [ -n "$USIGNKEY" ]; then
 	fi
 
 	umask 077
-	printf "untrusted comment: %s\n%s\n" "${USIGNCOMMENT:-key ID $USIGNID}" "$USIGNKEY" > "$tmpdir/usign.key"
+	printf "untrusted comment: %s\n%s\n" "${USIGNCOMMENT:-key ID $USIGNID}" "$USIGNKEY" > "$tmpdir/usign.sec"
 
 	umask 022
 	find "$tmpdir/tar/" -type f -not -name "*.asc" -and -not -name "*.sig" -exec \
-		signify-openbsd -S -s "$(readlink -f "$tmpdir/usign.key")" -m "{}" \; || finish 5
+		signify-openbsd -S -s "$(readlink -f "$tmpdir/usign.sec")" -m "{}" \; || finish 5
 fi
 
 tar -C "$tmpdir/tar/" -czf "$tarball" . || finish 6
-- 
2.24.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
