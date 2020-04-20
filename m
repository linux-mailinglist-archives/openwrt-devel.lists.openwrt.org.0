Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C07CE1B0C5F
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfPlB6k9C/JJT/yo17cPO3Ta1ebgnD/W3sWYxly/VKg=; b=HcnwRSVN7rfJVW
	RJFt+jUDzlCs/dQmncd4pu7dKah/UxYPC/EVfXrm/BQL8bC6ovMpzuvCFVndAwtNXHccr02JqPh9Y
	e20gz2rNioNb+GXPOKzoVVLi3y0YqjAyLyl0DQv3onz+vzFw/5aB8chWQbR1pSMMIEMb+jAbxR03x
	+plqeSSIltNtiMddeseQnET6n8QLAh/K2c+WrICMuD0F7TpDNghQy3yJkmmrV4YSAmHlwl+kL/Od7
	DzNYQ480HUonfNfPdPHFzlFdJO2eow7c02yAwGQ8sFnB9wqlGo0VOGECtrXdHVzzVJXpUdW3f9/AP
	dcNdzPaOrYNep5hTXN9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWGj-0000SB-DX; Mon, 20 Apr 2020 13:15:25 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWFT-0005De-Aj
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:14:08 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 107DB6004B;
 Mon, 20 Apr 2020 15:14:03 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 107DB6004B
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 107DB6004B
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587388444; bh=PWooICgY4UFC67qaHMMDK5BTxybAH67qgYw4qEXHrVA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xR9WHp1syj+vO+WG1+ar/OGUsIrEwU8QyNoHSWN+Lj02h/SZqyXcYAyfJpomMEdnr
 ndYvPaNvrTE58AfgHUisWn9UwXXSxl99Kqd9AEqBF9dvZ1G+TmAefpBjqCuve7wjRu
 BZfF6NAyTEAv+RZ4EepTG5Ybz7xCnnmNVJpSCsBU=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:14:02 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:13:34 +0200
Message-Id: <20200420131336.18252-5-hacks@slashdirt.org>
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
X-CRM114-CacheID: sfid-20200420_061407_543823_CAA39A86 
X-CRM114-Status: GOOD (  10.71  )
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
Subject: [OpenWrt-Devel] [PATCH v2 4/6] ath79/mikrotik: use routerbootpart
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
c3RlZC1ieTogUm9nZXIgUHVleW8gQ2VudGVsbGVzIDxyb2dlci5wdWV5b0BndWlmaS5uZXQ+ClNp
Z25lZC1vZmYtYnk6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4KLS0tCiAu
Li4vcWNhOTU1Nl9taWtyb3Rpa19yb3V0ZXJib2FyZC13YXAtZy01aGFjdDJobmQuZHRzICAgfCAx
OCArKysrKysrLS0tLS0tLS0tLS0KIC4uLi9xY2E5NTU4X21pa3JvdGlrX3JvdXRlcmJvYXJkLTky
MnVhZ3MtNWhwYWNkLmR0cyAgICB8IDE3ICsrKysrLS0tLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDEyIGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rhcmdl
dC9saW51eC9hdGg3OS9kdHMvcWNhOTU1Nl9taWtyb3Rpa19yb3V0ZXJib2FyZC13YXAtZy01aGFj
dDJobmQuZHRzIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU2X21pa3JvdGlrX3JvdXRl
cmJvYXJkLXdhcC1nLTVoYWN0MmhuZC5kdHMKaW5kZXggNTI5YWMxY2YzYi4uMThiNTg5OTBiOSAx
MDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU2X21pa3JvdGlrX3JvdXRl
cmJvYXJkLXdhcC1nLTVoYWN0MmhuZC5kdHMKKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9x
Y2E5NTU2X21pa3JvdGlrX3JvdXRlcmJvYXJkLXdhcC1nLTVoYWN0MmhuZC5kdHMKQEAgLTg0LDM3
ICs4NCwzMyBAQAogCQkJCWxhYmVsID0gIlJvdXRlckJvb3QiOwogCQkJCXJlZyA9IDwweDAgMHgy
MDAwMD47CiAJCQkJcmVhZC1vbmx5OwotCQkJCWNvbXBhdGlibGUgPSAiZml4ZWQtcGFydGl0aW9u
cyI7CisJCQkJY29tcGF0aWJsZSA9ICJtaWtyb3Rpayxyb3V0ZXJib290LXBhcnRpdGlvbnMiOwog
CQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCQkJCSNzaXplLWNlbGxzID0gPDE+OwogCiAJCQkJ
cGFydGl0aW9uQDAgewogCQkJCQlsYWJlbCA9ICJib290bG9hZGVyMSI7Ci0JCQkJCXJlZyA9IDww
eDAgMHhlMDAwPjsKKwkJCQkJcmVnID0gPDB4MCAweDA+OwogCQkJCQlyZWFkLW9ubHk7CiAJCQkJ
fTsKIAotCQkJCWhhcmRfY29uZmlnOiBwYXJ0aXRpb25AZTAwMCB7Ci0JCQkJCWxhYmVsID0gImhh
cmRfY29uZmlnIjsKLQkJCQkJcmVnID0gPDB4ZTAwMCAweDEwMDA+OworCQkJCWhhcmRfY29uZmln
OiBoYXJkX2NvbmZpZyB7CiAJCQkJCXJlYWQtb25seTsKIAkJCQl9OwogCi0JCQkJcGFydGl0aW9u
QGYwMDAgewotCQkJCQlsYWJlbCA9ICJiaW9zIjsKLQkJCQkJcmVnID0gPDB4ZjAwMCAweDEwMDA+
OworCQkJCWJpb3MgeworCQkJCQlzaXplID0gPDB4MTAwMD47CiAJCQkJCXJlYWQtb25seTsKIAkJ
CQl9OwogCiAJCQkJcGFydGl0aW9uQDEwMDAwIHsKIAkJCQkJbGFiZWwgPSAiYm9vdGxvYWRlcjIi
OwotCQkJCQlyZWcgPSA8MHgxMDAwMCAweGYwMDA+OworCQkJCQlyZWcgPSA8MHgxMDAwMCAweDA+
OwogCQkJCQlyZWFkLW9ubHk7CiAJCQkJfTsKIAotCQkJCXBhcnRpdGlvbkAxZjAwMCB7CisJCQkJ
c29mdF9jb25maWcgewogCQkJCQlsYWJlbCA9ICJzb2Z0X2NvbmZpZyI7Ci0JCQkJCXJlZyA9IDww
eDFmMDAwIDB4MTAwMD47CiAJCQkJfTsKIAkJCX07CiAKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51
eC9hdGg3OS9kdHMvcWNhOTU1OF9taWtyb3Rpa19yb3V0ZXJib2FyZC05MjJ1YWdzLTVocGFjZC5k
dHMgYi90YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1NThfbWlrcm90aWtfcm91dGVyYm9hcmQt
OTIydWFncy01aHBhY2QuZHRzCmluZGV4IDNmMmExYTUxYTYuLmU0MDkwOTY3OGIgMTAwNjQ0Ci0t
LSBhL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU1OF9taWtyb3Rpa19yb3V0ZXJib2FyZC05
MjJ1YWdzLTVocGFjZC5kdHMKKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU4X21p
a3JvdGlrX3JvdXRlcmJvYXJkLTkyMnVhZ3MtNWhwYWNkLmR0cwpAQCAtOTksMzIgKzk5LDI1IEBA
CiAJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDI1MDAwMDAwPjsKIAogCQlwYXJ0aXRpb25zIHsKLQkJ
CWNvbXBhdGlibGUgPSAiZml4ZWQtcGFydGl0aW9ucyI7CisJCQljb21wYXRpYmxlID0gIm1pa3Jv
dGlrLHJvdXRlcmJvb3QtcGFydGl0aW9ucyI7CiAJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkJ
CSNzaXplLWNlbGxzID0gPDE+OwogCiAJCQlwYXJ0aXRpb25AMCB7CiAJCQkJbGFiZWwgPSAicm91
dGVyYm9vdCI7Ci0JCQkJcmVnID0gPDB4MDAwMDAwMCAweDAwMGMwMDA+OworCQkJCXJlZyA9IDww
eDAgMHgwPjsKIAkJCQlyZWFkLW9ubHk7CiAJCQl9OwogCi0JCQloYXJkX2NvbmZpZzogcGFydGl0
aW9uQGMwMDAgewotCQkJCWxhYmVsID0gImhhcmRfY29uZmlnIjsKLQkJCQlyZWcgPSA8MHgwMDBj
MDAwIDB4MDAwMTAwMD47CisJCQloYXJkX2NvbmZpZzogaGFyZF9jb25maWcgewogCQkJCXJlYWQt
b25seTsKIAkJCX07CiAKLQkJCXBhcnRpdGlvbkBkMDAwIHsKLQkJCQlsYWJlbCA9ICJiaW9zIjsK
LQkJCQlyZWcgPSA8MHgwMDBkMDAwIDB4MDAwMTAwMD47CisJCQliaW9zIHsKIAkJCQlyZWFkLW9u
bHk7CiAJCQl9OwogCi0JCQlwYXJ0aXRpb25AZTAwMCB7Ci0JCQkJbGFiZWwgPSAic29mdF9jb25m
aWciOwotCQkJCXJlZyA9IDwweDAwMGUwMDAgMHgwMDAxMDAwPjsKLQkJCQlyZWFkLW9ubHk7CisJ
CQlzb2Z0X2NvbmZpZyB7CiAJCQl9OwogCQl9OwogCX07Ci0tIAoyLjExLjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
