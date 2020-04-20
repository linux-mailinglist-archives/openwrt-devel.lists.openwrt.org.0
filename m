Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936691B0CD0
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6ueBQzYzacqk7/miyCoV0mePh6okqa3ksi3LDkT8DI=; b=iUGTjypteyarhX
	sTkgED4HdD15Ehf86FKQ//SbDAAIKC1daRCYPUUx34P2K+IJNX31HXf8zU/FdNHuFJfvnKkYEmQWt
	6IgzqiL1ofbMA4cl2hw5TlJq2VYXhqtWiIT//cy9yWanP9cJsw/E7HxaS1zpXThy9W8DWQjoWh1hB
	oGzk9KSB4AM/juF782Q7HCKWi6gEufst9dBFNExM4VWkHt5mamevfaXcvlTyv9pjtrAg3QenkfS/q
	E0RU/rvvRuI1/Gyy9eKLqolTS+UKdrw+DGKsgpGv3H1+eD4r8OxaSmYmtE+PVq/vjWcL/aDu4qXGS
	+l2DdrfsdlBYV1SlGhnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWbq-0002OJ-05; Mon, 20 Apr 2020 13:37:14 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWaK-0000cm-Eu
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:35:42 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 710C8600C0;
 Mon, 20 Apr 2020 15:35:35 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 710C8600C0
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 710C8600C0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587389736; bh=W8tB48oPB/FWUXJ8iizQvWna8fMPjNVq/sq+ptbATrY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=w2b8gO/aJ88nd/8h0lXDeqNOa/sJvNchPoG1f0aoGAVMJuovn1SQ52H2QNk6+U2t4
 ZO70JWgWDiMrLCYiOI2OEV27GTquPWTCNnag85Ut41Wq25y411WloPhpZXhZnjcUe3
 yD8ykzx6UxknucLNtgfz8AR8fMXsRwQq92SQXLiw=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:35:34 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:34:56 +0200
Message-Id: <20200420133503.18700-8-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200420133503.18700-1-hacks@slashdirt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_063540_705317_3F702DF7 
X-CRM114-Status: GOOD (  13.15  )
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
Subject: [OpenWrt-Devel] [PATCH v2 07/14] ath79/mikrotik: don't use
 mtd-mac-address in DTS
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

QXMgZXZpZGVuY2VkIGhlcmVbMV0gdGhlIGRldmljZSBNQUMgYWRkcmVzcyBjYW4gYmUgc3RvcmVk
IGF0IGEgcmFuZG9tCm9mZnNldCBpbiB0aGUgaGFyZF9jb25maWcgcGFydGl0aW9uLiBSZWx5IG9u
IHN5c2ZzIHRvIHVwZGF0ZSB0aGUgTUFDCmFkZHJlc3MgY29ycmVjdGx5LgoKTm90ZTogdGhpcyB3
aWxsIHRyaWdnZXIgYSBoYXJtbGVzcyBrZXJuZWwgbWVzc2FnZSBkdXJpbmcgYm9vdDoKYWc3MXh4
IDE5MDAwMDAwLmV0aDogaW52YWxpZCBNQUMgYWRkcmVzcywgdXNpbmcgcmFuZG9tIGFkZHJlc3MK
ClRoZXJlIGlzIG5vIGNsZWFuIHdvcmthcm91bmQgdG8gcHJldmVudCB0aGlzIG1lc3NhZ2UgZnJv
bSBiZWluZyBlbWl0dGVkLgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQv
cHVsbC8yODUwI2lzc3VlY29tbWVudC02MTA4MDkwMjEKClNpZ25lZC1vZmYtYnk6IFRoaWJhdXQg
VkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4KLS0tCiAuLi4vYXRoNzkvZHRzL3FjYTk1NTZf
bWlrcm90aWtfcm91dGVyYm9hcmQtd2FwLWctNWhhY3QyaG5kLmR0cyAgICAgfCAzIC0tLQogLi4u
L2F0aDc5L2R0cy9xY2E5NTU4X21pa3JvdGlrX3JvdXRlcmJvYXJkLTkyMnVhZ3MtNWhwYWNkLmR0
cyAgICAgIHwgMiAtLQogdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMvZXRj
L2JvYXJkLmQvMDJfbmV0d29yayAgICAgIHwgNyArKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgv
YXRoNzkvZHRzL3FjYTk1NTZfbWlrcm90aWtfcm91dGVyYm9hcmQtd2FwLWctNWhhY3QyaG5kLmR0
cyBiL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU1Nl9taWtyb3Rpa19yb3V0ZXJib2FyZC13
YXAtZy01aGFjdDJobmQuZHRzCmluZGV4IDUyOWFjMWNmM2IuLjNjMGRjODRhMzcgMTAwNjQ0Ci0t
LSBhL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU1Nl9taWtyb3Rpa19yb3V0ZXJib2FyZC13
YXAtZy01aGFjdDJobmQuZHRzCisrKyBiL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU1Nl9t
aWtyb3Rpa19yb3V0ZXJib2FyZC13YXAtZy01aGFjdDJobmQuZHRzCkBAIC0xMSw3ICsxMSw2IEBA
CiAJbW9kZWwgPSAiTWlrcm9UaWsgUm91dGVyQk9BUkQgd0FQIEctNUhhY1QySG5EIjsKIAogCWFs
aWFzZXMgewotCQlsYWJlbC1tYWMtZGV2aWNlID0gJmV0aDE7CiAJCW1kaW8tZ3BpbzEgPSAmbWRp
bzI7CiAJCXNlcmlhbDAgPSAmdWFydDsKIAl9OwpAQCAtNTMsOCArNTIsNiBAQAogJmV0aDEgewog
CXN0YXR1cyA9ICJva2F5IjsKIAotCW10ZC1tYWMtYWRkcmVzcyA9IDwmaGFyZF9jb25maWcgMHgx
MD47Ci0KIAlwbGwtZGF0YSA9IDwweDAzMDAwMTAxIDB4ODAwMDAxMDEgMHg4MDAwMTMxMz47CiAJ
cGh5LWhhbmRsZSA9IDwmcGh5MD47CiAKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hdGg3OS9k
dHMvcWNhOTU1OF9taWtyb3Rpa19yb3V0ZXJib2FyZC05MjJ1YWdzLTVocGFjZC5kdHMgYi90YXJn
ZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1NThfbWlrcm90aWtfcm91dGVyYm9hcmQtOTIydWFncy01
aHBhY2QuZHRzCmluZGV4IDNmMmExYTUxYTYuLmZmODA2ZmY4OGQgMTAwNjQ0Ci0tLSBhL3Rhcmdl
dC9saW51eC9hdGg3OS9kdHMvcWNhOTU1OF9taWtyb3Rpa19yb3V0ZXJib2FyZC05MjJ1YWdzLTVo
cGFjZC5kdHMKKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU4X21pa3JvdGlrX3Jv
dXRlcmJvYXJkLTkyMnVhZ3MtNWhwYWNkLmR0cwpAQCAtMTEsNyArMTEsNiBAQAogCW1vZGVsID0g
Ik1pa3JvVGlrIFJvdXRlckJPQVJEIDkyMlVBR1MtNUhQYWNEIjsKIAogCWFsaWFzZXMgewotCQls
YWJlbC1tYWMtZGV2aWNlID0gJmV0aDA7CiAJCWxlZC1ib290ID0gJmxlZF91c2VyOwogCQlsZWQt
ZmFpbHNhZmUgPSAmbGVkX3VzZXI7CiAJCWxlZC11cGdyYWRlID0gJmxlZF91c2VyOwpAQCAtODAs
NyArNzksNiBAQAogJmV0aDAgewogCXN0YXR1cyA9ICJva2F5IjsKIAotCW10ZC1tYWMtYWRkcmVz
cyA9IDwmaGFyZF9jb25maWcgMHgxMD47CiAJcGh5LWhhbmRsZSA9IDwmcGh5ND47CiAJcGxsLWRh
dGEgPSA8MHg4ZjAwMDAwMCAweGEwMDAwMTAxIDB4YTAwMDEzMTM+OwogCmRpZmYgLS1naXQgYS90
YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3
b3JrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQv
MDJfbmV0d29yawppbmRleCBlZTc5NWM3NDk2Li4yMGM2NzBmNzAyIDEwMDc1NQotLS0gYS90YXJn
ZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3Jr
CisrKyBiL3RhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5k
LzAyX25ldHdvcmsKQEAgLTIxLDggKzIxLDE1IEBAIGF0aDc5X3NldHVwX2ludGVyZmFjZXMoKQog
YXRoNzlfc2V0dXBfbWFjcygpCiB7CiAJbG9jYWwgYm9hcmQ9IiQxIgorCWxvY2FsIGxhbl9tYWM9
IiIKKwlsb2NhbCB3YW5fbWFjPSIiCisJbG9jYWwgbWFjX2Jhc2U9Ii9zeXMvZmlybXdhcmUvbWlr
cm90aWsvaGFyZF9jb25maWcvbWFjX2Jhc2UiCiAKIAljYXNlICIkYm9hcmQiIGluCisJKikKKwkJ
bGFuX21hYz0iJChjYXQgJG1hY19iYXNlKSIKKwkJd2FuX21hYz0iJChjYXQgJG1hY19iYXNlKSIK
KwkJOzsKIAllc2FjCiAKIAlbIC1uICIkbGFuX21hYyIgXSAmJiB1Y2lkZWZfc2V0X2ludGVyZmFj
ZV9tYWNhZGRyICJsYW4iICRsYW5fbWFjCi0tIAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
