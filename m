Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEDF1966B1
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 15:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7oMchEhFH8UmVSddiLFzug6haNjQqwNPH/WLHFBZfo=; b=V/6ITL9GvCXA8l
	XKgTf2Xwtte7kTStOr42ZlBnXFNaqm8QSLgiUS6rBMOlRLrvJZCvb+tkn17X2KX0camY6Zn/YugMA
	B+lUe7BwTFt/IV9Qw/8vj3Fe8BBLN1/Ji2kihwPLDIeQFgMlbTjzktRMO8ACNE26PbGhWEiz8TcTb
	Tjc9nKbVXHWd4vmJKZFFouTTNHzVm56PAMtdU5coT//wsLver70LvRR5LGcq5p0w5wsLfHQbhOF6p
	UD58WY9ljm6LXLyIUPZROBLYTgO51o+JIyfvIaV6oUAga4YH7KUOTdnMqAUr/tzuABuDW9UqBoEP/
	sr8geLG2uZMLXTuGpjfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICLg-0000RR-1u; Sat, 28 Mar 2020 14:22:08 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICKn-0007rE-4x
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 14:21:14 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id A68DC600A7;
 Sat, 28 Mar 2020 15:21:08 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org A68DC600A7
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org A68DC600A7
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 28 Mar 2020 15:21:08 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 15:20:26 +0100
Message-Id: <20200328142032.37734-6-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200328142032.37734-1-hacks@slashdirt.org>
References: <20200328142032.37734-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_072113_464277_1DCD6EDD 
X-CRM114-Status: UNSURE (   9.16  )
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
Subject: [OpenWrt-Devel] [PATCH 05/11] ath79: MikroTik WAP G-5HacT2HnD
 routerboot partitions
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

VGVzdGVkLWJ5OiBSb2dlciBQdWV5byBDZW50ZWxsZXMgPHJvZ2VyLnB1ZXlvQGd1aWZpLm5ldD4K
U2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0K
IC4uLi9xY2E5NTU2X21pa3JvdGlrX3JvdXRlcmJvYXJkLXdhcC1nLTVoYWN0MmhuZC5kdHMgfCAy
MCArKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
MTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5
NTU2X21pa3JvdGlrX3JvdXRlcmJvYXJkLXdhcC1nLTVoYWN0MmhuZC5kdHMgYi90YXJnZXQvbGlu
dXgvYXRoNzkvZHRzL3FjYTk1NTZfbWlrcm90aWtfcm91dGVyYm9hcmQtd2FwLWctNWhhY3QyaG5k
LmR0cwppbmRleCA1ZmQ0NjIzNzI2Li5lYmIyNDY1ZTE1IDEwMDY0NAotLS0gYS90YXJnZXQvbGlu
dXgvYXRoNzkvZHRzL3FjYTk1NTZfbWlrcm90aWtfcm91dGVyYm9hcmQtd2FwLWctNWhhY3QyaG5k
LmR0cworKysgYi90YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1NTZfbWlrcm90aWtfcm91dGVy
Ym9hcmQtd2FwLWctNWhhY3QyaG5kLmR0cwpAQCAtODQsMzcgKzg0LDM1IEBACiAJCQkJbGFiZWwg
PSAiUm91dGVyQm9vdCI7CiAJCQkJcmVnID0gPDB4MCAweDIwMDAwPjsKIAkJCQlyZWFkLW9ubHk7
Ci0JCQkJY29tcGF0aWJsZSA9ICJmaXhlZC1wYXJ0aXRpb25zIjsKKwkJCQljb21wYXRpYmxlID0g
Im1pa3JvdGlrLHJvdXRlcmJvb3QtcGFydGl0aW9ucyI7CiAJCQkJI2FkZHJlc3MtY2VsbHMgPSA8
MT47CiAJCQkJI3NpemUtY2VsbHMgPSA8MT47CiAKLQkJCQlwYXJ0aXRpb25AMCB7CisJCQkJcGFy
dGl0aW9uMUAwIHsKIAkJCQkJbGFiZWwgPSAiYm9vdGxvYWRlcjEiOwotCQkJCQlyZWcgPSA8MHgw
IDB4ZTAwMD47CisJCQkJCXJlZyA9IDwweDAgMHgwPjsKIAkJCQkJcmVhZC1vbmx5OwogCQkJCX07
CiAKLQkJCQloYXJkX2NvbmZpZzogcGFydGl0aW9uQGUwMDAgeworCQkJCWhhcmRfY29uZmlnOiBw
YXJ0aXRpb24yIHsKIAkJCQkJbGFiZWwgPSAiaGFyZF9jb25maWciOwotCQkJCQlyZWcgPSA8MHhl
MDAwIDB4MTAwMD47CiAJCQkJCXJlYWQtb25seTsKIAkJCQl9OwogCi0JCQkJcGFydGl0aW9uQGYw
MDAgeworCQkJCXBhcnRpdGlvbjMgewogCQkJCQlsYWJlbCA9ICJiaW9zIjsKLQkJCQkJcmVnID0g
PDB4ZjAwMCAweDEwMDA+OworCQkJCQlzaXplID0gPDB4MTAwMD47CiAJCQkJCXJlYWQtb25seTsK
IAkJCQl9OwogCi0JCQkJcGFydGl0aW9uQDEwMDAwIHsKKwkJCQlwYXJ0aXRpb240QDEwMDAwIHsK
IAkJCQkJbGFiZWwgPSAiYm9vdGxvYWRlcjIiOwotCQkJCQlyZWcgPSA8MHgxMDAwMCAweGYwMDA+
OworCQkJCQlyZWcgPSA8MHgxMDAwMCAweDA+OwogCQkJCQlyZWFkLW9ubHk7CiAJCQkJfTsKIAot
CQkJCXBhcnRpdGlvbkAxZjAwMCB7CisJCQkJcGFydGl0aW9uNSB7CiAJCQkJCWxhYmVsID0gInNv
ZnRfY29uZmlnIjsKLQkJCQkJcmVnID0gPDB4MWYwMDAgMHgxMDAwPjsKIAkJCQl9OwogCQkJfTsK
IAotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
