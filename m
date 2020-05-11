Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76CF1CE94A
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 01:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iOB8cjgiR+R8FB3NgWdwYTaf1Ykk3Vd7Cf3w44I6hmk=; b=hx2p9YTaFup5OI
	kJlH1LEXvx8pyxcPlwcqVQvGZD/YZac8+2G0BxO4Qh7bT0/1Y9Fr/8O+E3jokqIzsTx3iZEpeNZpB
	Au6Q7cVZTlOxxVJzKi2pGM6sQcuc61bwwRqOtEL86Rcrw7ggq55FUVcZYgWT/x7CM1dxsdILBFhMk
	Pb6xD3d3dCtO1JMasks7hXoWj7yRyiocVJoPvymD9gml9GdN92RICFxTx5HOOOzVmU9xVRrj0cJfc
	8aNk2dtUaPWhUuE3exJrQdlIK7/HMt2ybLC1bj+W2T3wKxESiz/+sG+NCTm70cIF0/T7kQ5kpCkNm
	rvzTHI794sTIklBMwjtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYI7n-0005Ds-Fx; Mon, 11 May 2020 23:46:19 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYI7e-0005Co-FU
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 23:46:13 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jYI7Z-0005ZY-Q3; Tue, 12 May 2020 01:46:06 +0200
Date: Tue, 12 May 2020 00:45:49 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200511234549.GA574432@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_164610_515110_FB3575B2 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH fstools] block: fix segfault triggered by
 non-autofs mounts
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
Cc: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Program received signal SIGSEGV, Segmentation fault.
main_autofs (argv=<optimized out>, argc=<optimized out>)
    at fstools-2020-05-06-eec16e2f/block.c:1193
1193:    if (!m->autofs && (mp = find_mount_point(pr->dev))) {

Fixes: 9ab936d ("block(d): always call hotplug.d "mount" scripts from blockd")
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 block.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/block.c b/block.c
index 9458d52..569bf56 100644
--- a/block.c
+++ b/block.c
@@ -1190,7 +1190,7 @@ static int main_autofs(int argc, char **argv)
 				continue;
 
 			blockd_notify("hotplug", pr->dev, m, pr);
-			if (!m->autofs && (mp = find_mount_point(pr->dev))) {
+			if ((!m || !m->autofs) && (mp = find_mount_point(pr->dev))) {
 				blockd_notify("mount", pr->dev, NULL, NULL);
 				free(mp);
 			}
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
