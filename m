Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCE3E6A30
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 00:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h3m6cO5epxrr7ciZj9gOuf+WstgN7J1tk+zFBoW4nt4=; b=VURo5wu+NzKuhN
	BOLUiW89MTU1gwFqN4rb9Keg8cnBXTyiozyXRR041/Bvs0u8vHF0jTEOq+7zvZk/DyAvS8Ci206FT
	aa6nD659Vl5wNVH3U4OFzpG1EwN0Q733FRUpqIyn8X2Yw/059XcmNgQB7p5n7k4qqvJ1gDVKgZxXq
	fgV3e9786hS36skbrx4EwD6OB8OvQqY0mQooQvjLLl0nneCTwimJ+sCTWvf1vpc6CBPlDkq01zTZ9
	2Dl6WVNYhmz3JbWQwQzATBcve4eAchvMweQz7imPnWVb2B8mF/Nj3Npg3cSY1vjm/tvSC0MkPNgxX
	mthTuM6CCEKJ+HjCARvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOrnP-0005KA-ST; Sun, 27 Oct 2019 23:18:03 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOrnB-0005Il-7T
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 23:17:51 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M4JeB-1iP8m03bZB-000LXn for <openwrt-devel@lists.openwrt.org>; Mon, 28
 Oct 2019 00:17:45 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 28 Oct 2019 00:17:41 +0100
Message-Id: <20191027231741.7252-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ik0ltC3L7QPeEpBzYL+31akep4X2klcyiWUzKopjPKySxdSvKat
 bVrq6OEgm9SN5sITaIIUSEyjrKenRURKVBQrvyABR8EZ/4A7iTKL5XZcnqFQpmUG9LhBbvO
 qbw9OZxcAmn06FNwOKUPclU1RYfwllbnKMoHMI8WsDIrTZOaRnlk+XpAj9a7wXOfXCiUJKM
 fwz0leLxPQAngoyAqYN/Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8bbUrWnSWWg=:/GdsQpNSGgAGkjAVLU/qLH
 WqPtz3ZMDAzQq/87WFkVYgTfCxPlpagbpJNek96HJzjehyqOnDbBgT96cY5AkDb6ldXDPqvK4
 z0aZ3MVC6jtrBBpvKFZqo4Gw/yKMb2VcoIsvAeeoN0AazNC8KZIZtwMaKRlcN+GeFHhF8HypL
 DVyORoM1gx3j5N5/DhtvQ1g3lBIoSks5xz7mGFwV086pLkxDDAPr7iDFf+d+2tQeujrAEKKCj
 QLMoeEU52epMW4JmDKavpXH18e0UUwS/+mz9oenV+9Uwr/fEo8gncxiwZLKG9llbnVPMhzIRh
 /7/lun7CA9Cc/CwPu9OOXZBMnqFHRk/bmm1+TMuP1du9yCtz/nDDMENCnfPv42NLCsHKbHptM
 ICVIVHapymmgA50rLL4iCq02AJ27klZMeOnwOdUlOXW0nE6cgwFVCVoEeIBhUUonl1uFhQQee
 /nyur3IlFkp+9qklFsimYfIr4sAlUHniOWJTrryYXeQ61rbkAf4w7S/mzOeL++xl5CoK6B+BF
 l2OBqItR9b2iZXMjFBmC5/korrDKzkq0Vkv3NXp8Jc/gpnzolsiAwXnVAojrEILVPjuAGJ0k6
 +jMmenzptpVnPHcBeu2Vi1vi0TxW2VdRrmlMR6/1U8N29qJYK3361pukgP+uqGk0aX9LcKV20
 C9IqgvdgUQSW+VzKRA3WvzOuUr/WYbM8Co2tN4SANtlEdwGPMiuzxXsRJlLFLBh7Dw26fnHAE
 R5UQ6hHJWTwJEYAtrnu3VbvxaGokqb+9GE2jWZ1yjxZbMPrsXx6xwHREja8cQClgis7M1TL09
 zNKwpR1C5zhd8EW7BW0FlmmpSmrNiwG6I97hJnkohOSRJUEfAwSB05iwqB6c4tg+T6RIUGMfO
 Pxtdl40Wrn07w3ry8BcuJYx+CvhvwnpVfwgARYGWs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_161749_587045_F41BC60E 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: use nand_do_upgrade for nand
 subtarget
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

On nand subtarget, the default upgrade mechanism should be
nand_do_upgrade. This patch changes platform_do_upgrade()
accordingly.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/nand/base-files/lib/upgrade/platform.sh | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
index 6f8c7d47ff..3956d5d73f 100644
--- a/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
@@ -13,12 +13,11 @@ platform_do_upgrade() {
 	local board=$(board_name)
 
 	case "$board" in
-	aerohive,hiveap-121|\
-	zyxel,nbg6716)
-		nand_do_upgrade "$1"
+	glinet,gl-ar300m-nand)
+		default_do_upgrade "$1"
 		;;
 	*)
-		default_do_upgrade "$1"
+		nand_do_upgrade "$1"
 		;;
 	esac
 }
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
