Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A101B0CE3
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FN1GWtCrvmVYpT9L8g/5p+WpkiGyT8z3ParddFXv/UA=; b=IU6H8Paynb4Ccv
	0QQXQQbmFsGATg46iCE+OCrGjuOPI8AtbBsLVzZ7a3fIVows95DPc2bBqn62X6J7Y3IhVR+m5sATA
	p+xw6VA0oFjTd4iN8St0wXC1hcORbfoCLouZTg3MG8CcrHYhmzkKRZgkTWOgpVJzxL3hfDQTWVj4f
	NHmOVOE1YC9IpbOa8Jp6JJ0JFe7Lir6Xgaf9B5RyhLV8R9dbHEKbQXMR91Urgqtv6T/PQu4OGTfO5
	T/tV8w8Gv94hBVsgjBH31nnP3s5rQhCQFbY+NHSfRJ5t8bzb1FkjfdQ+gr9WEmaURSBG0io/DaG2p
	9r4r8+2ZHfDWMaoWENHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWdP-0004JY-W8; Mon, 20 Apr 2020 13:38:52 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWan-0001DC-5v
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:36:10 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 2D5B7600C0;
 Mon, 20 Apr 2020 15:36:04 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 2D5B7600C0
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 2D5B7600C0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587389765; bh=g40oD1Ab0hqxssnTmLDFz/jBQdQ4Qyer+1QxwsOGQ+I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Uz7944diJKajyumCvZN+8ns4gDeAB1tpezmPdpv21hFYgnGZ7/EgM2xmxPvgaYkmg
 9XNXjitdmjUGlt/YFBP63QIaXTZiMttPe+hCALI4hWRHoMQv6RRULQOLTcyXaaaDSC
 zGcyYu1fDrK44Ys8DXlCQBQhKTsZWhvcJhoF4btA=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:36:03 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:35:03 +0200
Message-Id: <20200420133503.18700-15-hacks@slashdirt.org>
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
X-CRM114-CacheID: sfid-20200420_063609_384869_A7280520 
X-CRM114-Status: GOOD (  11.65  )
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
Subject: [OpenWrt-Devel] [PATCH v2 14/14] ramips/mt7621: mikrotik: don't use
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
IHN5c2ZzIHRvIHVwZGF0ZSB0aGUgTUFDCmFkZHJlc3MgY29ycmVjdGx5LgoKWzFdIGh0dHBzOi8v
Z2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvcHVsbC8yODUwI2lzc3VlY29tbWVudC02MTA4MDkw
MjEKClNpZ25lZC1vZmYtYnk6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4K
LS0tCiB0YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlrcm90aWtfcm91dGVyYm9hcmQt
NzUwZ3IzLmR0cyB8IDcgLS0tLS0tLQogdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21p
a3JvdGlrX3JvdXRlcmJvYXJkLW0xMWcuZHRzICAgfCA1IC0tLS0tCiB0YXJnZXQvbGludXgvcmFt
aXBzL2R0cy9tdDc2MjFfbWlrcm90aWtfcm91dGVyYm9hcmQtbTMzZy5kdHMgICB8IDcgLS0tLS0t
LQogdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9u
ZXR3b3JrICAgfCA0ICsrKy0KIDQgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyMCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFf
bWlrcm90aWtfcm91dGVyYm9hcmQtNzUwZ3IzLmR0cyBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRz
L210NzYyMV9taWtyb3Rpa19yb3V0ZXJib2FyZC03NTBncjMuZHRzCmluZGV4IDNmMzcxNTVmMjQu
Ljc1NWM1ZWM5MzIgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMV9t
aWtyb3Rpa19yb3V0ZXJib2FyZC03NTBncjMuZHRzCisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMv
ZHRzL210NzYyMV9taWtyb3Rpa19yb3V0ZXJib2FyZC03NTBncjMuZHRzCkBAIC0xMjksMTggKzEy
OSwxMSBAQAogCX07CiB9OwogCi0mZ21hYzAgewotCW10ZC1tYWMtYWRkcmVzcyA9IDwmaGFyZF9j
b25maWcgMHgwMDEwPjsKLQltdGQtbWFjLWFkZHJlc3MtaW5jcmVtZW50ID0gPDE+OwotfTsKLQog
JnN3aXRjaDAgewogCXBvcnRzIHsKIAkJcG9ydEAwIHsKIAkJCXN0YXR1cyA9ICJva2F5IjsKIAkJ
CWxhYmVsID0gIndhbiI7Ci0JCQltdGQtbWFjLWFkZHJlc3MgPSA8JmhhcmRfY29uZmlnIDB4MDAx
MD47Ci0JCQltdGQtbWFjLWFkZHJlc3MtaW5jcmVtZW50ID0gPDI+OwogCQl9OwogCiAJCXBvcnRA
MSB7CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlrcm90aWtf
cm91dGVyYm9hcmQtbTExZy5kdHMgYi90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlr
cm90aWtfcm91dGVyYm9hcmQtbTExZy5kdHMKaW5kZXggYmQ1OGFlYTk1MS4uMzdhMTMxMmY1MiAx
MDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3JvdXRl
cmJvYXJkLW0xMWcuZHRzCisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMV9taWty
b3Rpa19yb3V0ZXJib2FyZC1tMTFnLmR0cwpAQCAtMTM4LDExICsxMzgsNiBAQAogCX07CiB9Owog
Ci0mZ21hYzAgewotCW10ZC1tYWMtYWRkcmVzcyA9IDwmaGFyZF9jb25maWcgMHgwMDEwPjsKLQlt
dGQtbWFjLWFkZHJlc3MtaW5jcmVtZW50ID0gPDE+OwotfTsKLQogJnN3aXRjaDAgewogCXBvcnRz
IHsKIAkJcG9ydEAwIHsKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYy
MV9taWtyb3Rpa19yb3V0ZXJib2FyZC1tMzNnLmR0cyBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRz
L210NzYyMV9taWtyb3Rpa19yb3V0ZXJib2FyZC1tMzNnLmR0cwppbmRleCAxOWUxYTcxZTk5Li4w
M2JjNDg5MzgwIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlr
cm90aWtfcm91dGVyYm9hcmQtbTMzZy5kdHMKKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMv
bXQ3NjIxX21pa3JvdGlrX3JvdXRlcmJvYXJkLW0zM2cuZHRzCkBAIC0xNjIsMTggKzE2MiwxMSBA
QAogCX07CiB9OwogCi0mZ21hYzAgewotCW10ZC1tYWMtYWRkcmVzcyA9IDwmaGFyZF9jb25maWcg
MHgwMDEwPjsKLQltdGQtbWFjLWFkZHJlc3MtaW5jcmVtZW50ID0gPDE+OwotfTsKLQogJnN3aXRj
aDAgewogCXBvcnRzIHsKIAkJcG9ydEAwIHsKIAkJCXN0YXR1cyA9ICJva2F5IjsKIAkJCWxhYmVs
ID0gIndhbiI7Ci0JCQltdGQtbWFjLWFkZHJlc3MgPSA8JmhhcmRfY29uZmlnIDB4MDAxMD47Ci0J
CQltdGQtbWFjLWFkZHJlc3MtaW5jcmVtZW50ID0gPDI+OwogCQl9OwogCiAJCXBvcnRAMSB7CmRp
ZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL210NzYyMS9iYXNlLWZpbGVzL2V0Yy9ib2Fy
ZC5kLzAyX25ldHdvcmsgYi90YXJnZXQvbGludXgvcmFtaXBzL210NzYyMS9iYXNlLWZpbGVzL2V0
Yy9ib2FyZC5kLzAyX25ldHdvcmsKaW5kZXggMjUyZjlmMWRkYS4uOTFjZWQ4ZWRlNyAxMDA3NTUK
LS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8w
Ml9uZXR3b3JrCisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIxL2Jhc2UtZmlsZXMvZXRj
L2JvYXJkLmQvMDJfbmV0d29yawpAQCAtOTIsNyArOTIsOSBAQCByYW1pcHNfc2V0dXBfbWFjcygp
CiAJbWlrcm90aWsscm91dGVyYm9hcmQtNzUwZ3IzfFwKIAltaWtyb3Rpayxyb3V0ZXJib2FyZC1t
MTFnfFwKIAltaWtyb3Rpayxyb3V0ZXJib2FyZC1tMzNnKQotCQlsYWJlbF9tYWM9JChtdGRfZ2V0
X21hY19iaW5hcnkgaGFyZF9jb25maWcgMHgxMCkKKwkJbGFiZWxfbWFjPSQoY2F0ICIvc3lzL2Zp
cm13YXJlL21pa3JvdGlrL2hhcmRfY29uZmlnL21hY19iYXNlIikKKwkJbGFuX21hYz0kKG1hY2Fk
ZHJfYWRkICRsYWJlbF9tYWMgMSkKKwkJd2FuX21hYz0kKG1hY2FkZHJfYWRkICRsYWJlbF9tYWMg
MikKIAkJOzsKIAl6YnRsaW5rLHpidC13ZTEzMjZ8XAogCXpidGxpbmssemJ0LXdnMzUyNi0xNm18
XAotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
