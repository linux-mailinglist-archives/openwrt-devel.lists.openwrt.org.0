Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35B31B0C67
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=amyJ2T/lRO6F3n0nwk3jiX+VdU8Yff85HS7itXABcDw=; b=KEG+XL9cneoALe
	gokBo6CSP2WyzeYkwjdr2zd0ju9Ce2VFX0pbr44SSPszBq1noVyETX3mvACaa6zAX92oS+BS2/LSy
	B9dN8kpz/US4Y3ScdIjyJck2rC6RgrXZwmCWIxoOuNzf3ZB9Lt514GDCUqYrBa1aRTfHSqFsf8RYP
	hbYS33E+OKtLFzaZLI58Q0Xh5Y3AhQ8e2Z2KFOzl5HchXJ0yQTY6wdeotWvge+eX+c6Jnqv3qrPwW
	9CF7UJKXO/8FATNtCRZXisDNakJdQ7WxPi7bZhAwjL6aXboCpIMPYwLXTnA2z7sIOmJFmfg2UMWEl
	qk9EOLXpldE8a1mS4kDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWH7-00010W-Ly; Mon, 20 Apr 2020 13:15:49 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWFa-0005N8-8C
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:14:15 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id E9D1D6004B;
 Mon, 20 Apr 2020 15:14:09 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org E9D1D6004B
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org E9D1D6004B
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587388451; bh=q8frmzr3wFolvnA1T75GvPi4hVOjPJePv2+wlEhj64c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZYhg448tpIo73MEZFPNx48DtX7MtCuB3J3DeMq5/nVT0lwf0bBKQPxaLcYckja6J6
 4rQyCgyVf1/FzUee4GuIZ319IecQG4lnUl4wI2yDpkADEfqiCuNCHQc9OupbqiKSis
 ScLFFmiLgRr1vjLLaGlg4zpD6a3cPdX91l0uDWXc=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:14:09 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:13:36 +0200
Message-Id: <20200420131336.18252-7-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200420131336.18252-1-hacks@slashdirt.org>
References: <20200420131336.18252-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_061414_498348_7309634B 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 6/6] ramips: mikrotik: use routerbootpart
 partitions
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RW5hYmxlIHJvdXRlcmJvb3RwYXJ0IHBhcnRpdGlvbnMgb24gTWlrcm9UaWsgZGV2aWNlcy4KClRl
c3RlZC1ieTogVG9iaWFzIFNjaHJhbW0gPHQuc2NocmFtbUBtYW5qYXJvLm9yZz4KU2lnbmVkLW9m
Zi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0KIC4uLi9saW51
eC9yYW1pcHMvZHRzL210NzYyMV9taWtyb3Rpa19yb3V0ZXJib2FyZC03NTBncjMuZHRzICB8IDEy
ICsrKystLS0tLS0tLQogdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3Jv
dXRlcmJvYXJkLW0xMWcuZHRzIHwgMTIgKysrKy0tLS0tLS0tCiB0YXJnZXQvbGludXgvcmFtaXBz
L2R0cy9tdDc2MjFfbWlrcm90aWtfcm91dGVyYm9hcmQtbTMzZy5kdHMgfCAxMiArKysrLS0tLS0t
LS0KIDMgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3JvdXRl
cmJvYXJkLTc1MGdyMy5kdHMgYi90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlrcm90
aWtfcm91dGVyYm9hcmQtNzUwZ3IzLmR0cwppbmRleCAzZjM3MTU1ZjI0Li5kN2Y5N2VmMWQ2IDEw
MDY0NAotLS0gYS90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlrcm90aWtfcm91dGVy
Ym9hcmQtNzUwZ3IzLmR0cworKysgYi90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlr
cm90aWtfcm91dGVyYm9hcmQtNzUwZ3IzLmR0cwpAQCAtODYsMTkgKzg2LDE3IEBACiAJCQkJbGFi
ZWwgPSAiUm91dGVyQm9vdCI7CiAJCQkJcmVnID0gPDB4MCAweDQwMDAwPjsKIAkJCQlyZWFkLW9u
bHk7Ci0JCQkJY29tcGF0aWJsZSA9ICJmaXhlZC1wYXJ0aXRpb25zIjsKKwkJCQljb21wYXRpYmxl
ID0gIm1pa3JvdGlrLHJvdXRlcmJvb3QtcGFydGl0aW9ucyI7CiAJCQkJI2FkZHJlc3MtY2VsbHMg
PSA8MT47CiAJCQkJI3NpemUtY2VsbHMgPSA8MT47CiAKIAkJCQlwYXJ0aXRpb25AMCB7CiAJCQkJ
CWxhYmVsID0gImJvb3Rsb2FkZXIxIjsKLQkJCQkJcmVnID0gPDB4MCAweGYwMDA+OworCQkJCQly
ZWcgPSA8MHgwIDB4MD47CiAJCQkJCXJlYWQtb25seTsKIAkJCQl9OwogCi0JCQkJaGFyZF9jb25m
aWc6IHBhcnRpdGlvbkBmMDAwIHsKLQkJCQkJbGFiZWwgPSAiaGFyZF9jb25maWciOwotCQkJCQly
ZWcgPSA8MHhmMDAwIDB4MTAwMD47CisJCQkJaGFyZF9jb25maWc6IGhhcmRfY29uZmlnIHsKIAkJ
CQkJcmVhZC1vbmx5OwogCQkJCX07CiAKQEAgLTEwOCw5ICsxMDYsNyBAQAogCQkJCQlyZWFkLW9u
bHk7CiAJCQkJfTsKIAotCQkJCXBhcnRpdGlvbkAyMDAwMCB7Ci0JCQkJCWxhYmVsID0gInNvZnRf
Y29uZmlnIjsKLQkJCQkJcmVnID0gPDB4MjAwMDAgMHgxMDAwPjsKKwkJCQlzb2Z0X2NvbmZpZyB7
CiAJCQkJfTsKIAogCQkJCXBhcnRpdGlvbkAzMDAwMCB7CmRpZmYgLS1naXQgYS90YXJnZXQvbGlu
dXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlrcm90aWtfcm91dGVyYm9hcmQtbTExZy5kdHMgYi90YXJn
ZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlrcm90aWtfcm91dGVyYm9hcmQtbTExZy5kdHMK
aW5kZXggYmQ1OGFlYTk1MS4uMTI4YjhhMjgxNiAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L3Jh
bWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3JvdXRlcmJvYXJkLW0xMWcuZHRzCisrKyBiL3Rhcmdl
dC9saW51eC9yYW1pcHMvZHRzL210NzYyMV9taWtyb3Rpa19yb3V0ZXJib2FyZC1tMTFnLmR0cwpA
QCAtOTUsMTkgKzk1LDE3IEBACiAJCQkJbGFiZWwgPSAiUm91dGVyQm9vdCI7CiAJCQkJcmVnID0g
PDB4MCAweDQwMDAwPjsKIAkJCQlyZWFkLW9ubHk7Ci0JCQkJY29tcGF0aWJsZSA9ICJmaXhlZC1w
YXJ0aXRpb25zIjsKKwkJCQljb21wYXRpYmxlID0gIm1pa3JvdGlrLHJvdXRlcmJvb3QtcGFydGl0
aW9ucyI7CiAJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CiAJCQkJI3NpemUtY2VsbHMgPSA8MT47
CiAKIAkJCQlwYXJ0aXRpb25AMCB7CiAJCQkJCWxhYmVsID0gImJvb3Rsb2FkZXIxIjsKLQkJCQkJ
cmVnID0gPDB4MCAweGYwMDA+OworCQkJCQlyZWcgPSA8MHgwIDB4MD47CiAJCQkJCXJlYWQtb25s
eTsKIAkJCQl9OwogCi0JCQkJaGFyZF9jb25maWc6IHBhcnRpdGlvbkBmMDAwIHsKLQkJCQkJbGFi
ZWwgPSAiaGFyZF9jb25maWciOwotCQkJCQlyZWcgPSA8MHhmMDAwIDB4MTAwMD47CisJCQkJaGFy
ZF9jb25maWc6IGhhcmRfY29uZmlnIHsKIAkJCQkJcmVhZC1vbmx5OwogCQkJCX07CiAKQEAgLTEx
Nyw5ICsxMTUsNyBAQAogCQkJCQlyZWFkLW9ubHk7CiAJCQkJfTsKIAotCQkJCXBhcnRpdGlvbkAy
MDAwMCB7Ci0JCQkJCWxhYmVsID0gInNvZnRfY29uZmlnIjsKLQkJCQkJcmVnID0gPDB4MjAwMDAg
MHgxMDAwPjsKKwkJCQlzb2Z0X2NvbmZpZyB7CiAJCQkJfTsKIAogCQkJCXBhcnRpdGlvbkAzMDAw
MCB7CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlrcm90aWtf
cm91dGVyYm9hcmQtbTMzZy5kdHMgYi90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlr
cm90aWtfcm91dGVyYm9hcmQtbTMzZy5kdHMKaW5kZXggMTllMWE3MWU5OS4uYWZmMmQwZTY0ZiAx
MDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3JvdXRl
cmJvYXJkLW0zM2cuZHRzCisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMV9taWty
b3Rpa19yb3V0ZXJib2FyZC1tMzNnLmR0cwpAQCAtMTA0LDE5ICsxMDQsMTcgQEAKIAkJCQlsYWJl
bCA9ICJSb3V0ZXJCb290IjsKIAkJCQlyZWcgPSA8MHgwIDB4NDAwMDA+OwogCQkJCXJlYWQtb25s
eTsKLQkJCQljb21wYXRpYmxlID0gImZpeGVkLXBhcnRpdGlvbnMiOworCQkJCWNvbXBhdGlibGUg
PSAibWlrcm90aWsscm91dGVyYm9vdC1wYXJ0aXRpb25zIjsKIAkJCQkjYWRkcmVzcy1jZWxscyA9
IDwxPjsKIAkJCQkjc2l6ZS1jZWxscyA9IDwxPjsKIAogCQkJCXBhcnRpdGlvbkAwIHsKIAkJCQkJ
bGFiZWwgPSAiYm9vdGxvYWRlcjEiOwotCQkJCQlyZWcgPSA8MHgwIDB4ZjAwMD47CisJCQkJCXJl
ZyA9IDwweDAgMHgwPjsKIAkJCQkJcmVhZC1vbmx5OwogCQkJCX07CiAKLQkJCQloYXJkX2NvbmZp
ZzogcGFydGl0aW9uQGYwMDAgewotCQkJCQlsYWJlbCA9ICJoYXJkX2NvbmZpZyI7Ci0JCQkJCXJl
ZyA9IDwweGYwMDAgMHgxMDAwPjsKKwkJCQloYXJkX2NvbmZpZzogaGFyZF9jb25maWcgewogCQkJ
CQlyZWFkLW9ubHk7CiAJCQkJfTsKIApAQCAtMTI2LDkgKzEyNCw3IEBACiAJCQkJCXJlYWQtb25s
eTsKIAkJCQl9OwogCi0JCQkJcGFydGl0aW9uQDIwMDAwIHsKLQkJCQkJbGFiZWwgPSAic29mdF9j
b25maWciOwotCQkJCQlyZWcgPSA8MHgyMDAwMCAweDEwMDA+OworCQkJCXNvZnRfY29uZmlnIHsK
IAkJCQl9OwogCiAJCQkJcGFydGl0aW9uQDMwMDAwIHsKLS0gCjIuMTEuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
