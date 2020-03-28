Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E7A1966AF
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 15:21:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZefPiOUlu1+bcjQWqZrUkOdc5CdBxjgVfLiiBQQwaA=; b=M0jOE5zq2jvbXn
	dYnDQcCR/TLm7HagClfWwn5smyc9WszDXHnW5mqu4EPqJpRfSUgrq8NQp2bBod7kFWzPpdTqoJrdI
	TyzIxtgqtQ3YzamKRgaXO0maQfgHrMEp2DUqLTyWWlrro3l19jqwyrl6MsEW1Cc4VQnEn6pvF2z0s
	GJCtE8dYlqdbw9B6ZzDMLUjFV/iVar1ATcebwgZUMxJzBgETGjazgHazLtrkU7oeb1VP4xUtYHx9M
	Ffocr2rTFpXMdTF56S/O134r/rXGLVp+x/V4OA60G1tFxDlS53zmosakHNjFW0x88kAJtvUyPxxvc
	dR0sjBfPgn2Heff0i37Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICLS-0000CZ-64; Sat, 28 Mar 2020 14:21:54 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICKj-0007mz-8d
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 14:21:10 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id ED58A6055D;
 Sat, 28 Mar 2020 15:21:04 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org ED58A6055D
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org ED58A6055D
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 28 Mar 2020 15:21:04 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 15:20:25 +0100
Message-Id: <20200328142032.37734-5-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200328142032.37734-1-hacks@slashdirt.org>
References: <20200328142032.37734-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_072109_480822_B6CC24D8 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
Subject: [OpenWrt-Devel] [PATCH 04/11] ath79: mikrotik: enable
 CONFIG_MTD_ROUTERBOOT_PARTS
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0K
IHRhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9jb25maWctZGVmYXVsdCB8IDEgKwogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5
L21pa3JvdGlrL2NvbmZpZy1kZWZhdWx0IGIvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Nv
bmZpZy1kZWZhdWx0CmluZGV4IGE5NWQxMzQwNmEuLmNlYTNkM2NjNTcgMTAwNjQ0Ci0tLSBhL3Rh
cmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9jb25maWctZGVmYXVsdAorKysgYi90YXJnZXQvbGlu
dXgvYXRoNzkvbWlrcm90aWsvY29uZmlnLWRlZmF1bHQKQEAgLTE3LDYgKzE3LDcgQEAgQ09ORklH
X01URF9VQkk9eQogQ09ORklHX01URF9VQklfQkxPQ0s9eQogQ09ORklHX01URF9VQklfV0xfVEhS
RVNIT0xEPTQwOTYKIENPTkZJR19NVERfVUJJX0JFQl9MSU1JVD0yMAorQ09ORklHX01URF9ST1VU
RVJCT09UX1BBUlRTPXkKICMgQ09ORklHX01URF9VQklfRkFTVE1BUCBpcyBub3Qgc2V0CiAjIENP
TkZJR19NVERfVUJJX0dMVUVCSSBpcyBub3Qgc2V0CiBDT05GSUdfTkVUX1NXSVRDSERFVj15Ci0t
IAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
