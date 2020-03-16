Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D8E1868BF
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 11:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6QpkG159TMqivW406OLpcixOGsEQ8E9AhnNTUwwnHA=; b=hraaWBKVGaC02y
	eJ7H3ly4STJOqvEaefLEcMKHSzMw59lwHwew/xpsWhME4ZT5H1Z66td3nnG40KQXWl/+hfmRM5BPZ
	aCkojxLBUmSrxGnxsbRcr08xrJdDVekBuUgLxaMQ0s6O2d5hhquNIsLaOimboF4EefjoOrl5WkCkt
	i/4eOAKzdNjSA+6zkRqJrMoKUyEBMUJjHjfqYuEen5JBEeyJnuYllM0eWqRp86+y4tNn18QfkW9Yr
	ox9heRCwMgg3YA3ddL5ctoSGEQ+iLV+E+fe9SfIkrCZ+omwRL5C4/v/4SQznht/w7S4oKcdfcAzq3
	Nwy6ts/7d0v3rwPvkUkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmlX-00073v-5f; Mon, 16 Mar 2020 10:14:35 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmlQ-000723-Tm
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 10:14:30 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 634796055F;
 Mon, 16 Mar 2020 11:14:05 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 634796055F
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 634796055F
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 16 Mar 2020 11:14:04 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 11:13:49 +0100
Message-Id: <20200316101349.25506-2-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200316101349.25506-1-hacks@slashdirt.org>
References: <20200316101349.25506-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_031429_125318_06F2C073 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: rename mikrotik RB
 922UAGS-5HPacD mtd partition
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

SW4gUm91dGVyQk9BUkQgcGFybGFuY2UgdGhlcmUgbmV2ZXIgd2FzIGFuICJhcnQiIHBhcnRpdGlv
bi4KVGhpcyBwYXJ0aXRpb24gaGFzIGFsd2F5cyBiZWVuIG5hbWVkICdoYXJkX2NvbmZpZycgb24g
YXI3MXh4LgoKVGhpcyBwYXJ0aXRpb24gY29udGFpbnMgbW9yZSB0aGFuIGp1c3QgQVJUIChBdGhl
cm9zIFJhZGlvIFRlc3QpIGRhdGEuIEl0CmluY2x1ZGVzIHRoZSBoYXJkd2FyZSBkZXNjcmlwdGlv
biAocHJvZHVjdCBjb2RlLCBzZXJpYWwsIGJvYXJkCmlkZW50aWZpZXIsIG5hbWUsIGhhcmR3YXJl
IG9wdGlvbnMsIE1BQyBhZGRyZXNzKSwgYXMgd2VsbCBhcyBvdGhlciBiaXRzCmFmZmVjdGluZyB0
aGUgb3BlcmF0aW9uIG9mIFJvdXRlckJvb3QuClRvIGF2b2lkIGNvbmZ1c2lvbiB3aXRoIHJlZ3Vs
YXIgQVJUIGRhdGEsIHRoaXMgcGFydGl0aW9uIGlzIHJlbmFtZWQgaW4KbGluZSB3aXRoIGhpc3Rv
cmljYWwgYXI3MXh4IGFuZCByYW1pcHMgbm9tZW5jbGF0dXJlIGFzICdoYXJkX2NvbmZpZycuCgpU
aGlzIGNvbW1pdCBmaXhlcyB0aGUgcHJldmlvdXMgc3VwcG9ydCBmaWxlcy4KClNpZ25lZC1vZmYt
Ynk6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4KLS0tCiAuLi4vbGludXgv
YXRoNzkvZHRzL3FjYTk1NThfbWlrcm90aWtfcm91dGVyYm9hcmQtOTIydWFncy01aHBhY2QuZHRz
IHwgNiArKystLS0KIC4uLi9hdGg3OS9uYW5kL2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9maXJt
d2FyZS8xMS1hdGgxMGstY2FsZGF0YSAgfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRoNzkv
ZHRzL3FjYTk1NThfbWlrcm90aWtfcm91dGVyYm9hcmQtOTIydWFncy01aHBhY2QuZHRzIGIvdGFy
Z2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU4X21pa3JvdGlrX3JvdXRlcmJvYXJkLTkyMnVhZ3Mt
NWhwYWNkLmR0cwppbmRleCAyNmExOGFkNmE3Li4zZjJhMWE1MWE2IDEwMDY0NAotLS0gYS90YXJn
ZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1NThfbWlrcm90aWtfcm91dGVyYm9hcmQtOTIydWFncy01
aHBhY2QuZHRzCisrKyBiL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU1OF9taWtyb3Rpa19y
b3V0ZXJib2FyZC05MjJ1YWdzLTVocGFjZC5kdHMKQEAgLTgwLDcgKzgwLDcgQEAKICZldGgwIHsK
IAlzdGF0dXMgPSAib2theSI7CiAKLQltdGQtbWFjLWFkZHJlc3MgPSA8JmFydCAweDEwPjsKKwlt
dGQtbWFjLWFkZHJlc3MgPSA8JmhhcmRfY29uZmlnIDB4MTA+OwogCXBoeS1oYW5kbGUgPSA8JnBo
eTQ+OwogCXBsbC1kYXRhID0gPDB4OGYwMDAwMDAgMHhhMDAwMDEwMSAweGEwMDAxMzEzPjsKIApA
QCAtMTA5LDggKzEwOSw4IEBACiAJCQkJcmVhZC1vbmx5OwogCQkJfTsKIAotCQkJYXJ0OiBwYXJ0
aXRpb25AYzAwMCB7Ci0JCQkJbGFiZWwgPSAiYXJ0IjsKKwkJCWhhcmRfY29uZmlnOiBwYXJ0aXRp
b25AYzAwMCB7CisJCQkJbGFiZWwgPSAiaGFyZF9jb25maWciOwogCQkJCXJlZyA9IDwweDAwMGMw
MDAgMHgwMDAxMDAwPjsKIAkJCQlyZWFkLW9ubHk7CiAJCQl9OwpkaWZmIC0tZ2l0IGEvdGFyZ2V0
L2xpbnV4L2F0aDc5L25hbmQvYmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0
aDEway1jYWxkYXRhIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L25hbmQvYmFzZS1maWxlcy9ldGMvaG90
cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEway1jYWxkYXRhCmluZGV4IDhhMWJlZDU4YzEuLjMxYTFk
YjVhZWIgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9hdGg3OS9uYW5kL2Jhc2UtZmlsZXMvZXRj
L2hvdHBsdWcuZC9maXJtd2FyZS8xMS1hdGgxMGstY2FsZGF0YQorKysgYi90YXJnZXQvbGludXgv
YXRoNzkvbmFuZC9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTEtYXRoMTBrLWNh
bGRhdGEKQEAgLTI4LDcgKzI4LDcgQEAgY2FzZSAiJEZJUk1XQVJFIiBpbgogImF0aDEway9jYWwt
cGNpLTAwMDA6MDE6MDAuMC5iaW4iKQogCWNhc2UgJGJvYXJkIGluCiAJbWlrcm90aWsscm91dGVy
Ym9hcmQtOTIydWFncy01aHBhY2QpCi0JCW1pa3JvdGlrX2NhbGRhdGFfZXh0cmFjdCAiYXJ0IiAw
eDUwMDAgMHg4NDQKKwkJbWlrcm90aWtfY2FsZGF0YV9leHRyYWN0ICJoYXJkX2NvbmZpZyIgMHg1
MDAwIDB4ODQ0CiAJCTs7CiAJZXNhYwogCTs7Ci0tIAoyLjExLjAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
