Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CEA1868BE
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 11:14:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LZo0zZHbYUbqiQKHrwUQDtWgLGEa3A5lCF/VLVRNhmY=; b=NzYSFNxDeJM2HP
	GGqkgMoy1hlHrVkXGepAeHSiRaq+BLDHowzNetC9k2XsPWyMEQcg4lCWaZY7CLcE6uUOgC1vmxWYY
	oxsiWlQuJ+18ATxuZcIYOBgOb2VtwjYAP92f8S1N1VWVjAkv5tXFU1rzUCa8DdREBhRCtUTIrswe3
	WlxKvKmX/3TFWqmEjMgcs7nU080AoML+7f8REq0Y6lgme8w7zIBpMCR7Bd9oQpc8gMdn1weUGP2oT
	Ie4Ig+c+Jp1w+wnC2g3K+gFvNi8SSv5ech6aOVpwteT1YNcIpqmYN+tN+P6/x9lXtar0iGgpX8SqD
	iyOstQ5caTl0bXvwsH7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmli-0007Aa-Qj; Mon, 16 Mar 2020 10:14:46 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmlQ-00072N-UR
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 10:14:30 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 7F3066006A;
 Mon, 16 Mar 2020 11:13:51 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 7F3066006A
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 7F3066006A
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 16 Mar 2020 11:13:50 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 11:13:48 +0100
Message-Id: <20200316101349.25506-1-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_031429_295542_D851631D 
X-CRM114-Status: GOOD (  11.99  )
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
Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: fix mikrotik WAP G-5HacT2HnD mtd
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
aGlzIGNvbW1pdCBmaXhlcyB0aGUgcHJldmlvdXMgc3VwcG9ydCBmaWxlcyBhbmQgaW1wbGVtZW50
cyB0aGUgbmVzdGVkClJvdXRlckJvb3QgcGFydGl0aW9uIHNjaGVtZSBhcyBhbHJlYWR5IHVzZWQg
YnkgcmFtaXBzLWJhc2VkIFNQSS1OT1IKUm91dGVyQk9BUkQgRFRTZXMsIGFzIHByZXZpb3VzbHkg
cmV2aWV3ZWQgYW5kIGltcGxlbWVudGVkIGluIGJiZTJjZjY1N2MuCgpUZXN0ZWQtYnk6IFJvZ2Vy
IFB1ZXlvIENlbnRlbGxlcyA8cm9nZXIucHVleW9AZ3VpZmkubmV0PgpTaWduZWQtb2ZmLWJ5OiBU
aGliYXV0IFZBUsOITkUgPGhhY2tzQHNsYXNoZGlydC5vcmc+Ci0tLQogLi4uY2E5NTU2X21pa3Jv
dGlrX3JvdXRlcmJvYXJkLXdhcC1nLTVoYWN0MmhuZC5kdHMgfCA2MSArKysrKysrKysrKysrLS0t
LS0tLS0tCiAuLi4vZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMC1hdGg5ay1lZXByb20gICAgICAg
ICB8ICA0ICstCiAuLi4vZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMS1hdGgxMGstY2FsZGF0YSAg
ICAgICB8ICAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDI5IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU1Nl9taWty
b3Rpa19yb3V0ZXJib2FyZC13YXAtZy01aGFjdDJobmQuZHRzIGIvdGFyZ2V0L2xpbnV4L2F0aDc5
L2R0cy9xY2E5NTU2X21pa3JvdGlrX3JvdXRlcmJvYXJkLXdhcC1nLTVoYWN0MmhuZC5kdHMKaW5k
ZXggMDE1YmQyZWZlNS4uNWZkNDYyMzcyNiAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5
L2R0cy9xY2E5NTU2X21pa3JvdGlrX3JvdXRlcmJvYXJkLXdhcC1nLTVoYWN0MmhuZC5kdHMKKysr
IGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU2X21pa3JvdGlrX3JvdXRlcmJvYXJkLXdh
cC1nLTVoYWN0MmhuZC5kdHMKQEAgLTUzLDcgKzUzLDcgQEAKICZldGgxIHsKIAlzdGF0dXMgPSAi
b2theSI7CiAKLQltdGQtbWFjLWFkZHJlc3MgPSA8JmFydCAweDEwPjsKKwltdGQtbWFjLWFkZHJl
c3MgPSA8JmhhcmRfY29uZmlnIDB4MTA+OwogCiAJcGxsLWRhdGEgPSA8MHgwMzAwMDEwMSAweDgw
MDAwMTAxIDB4ODAwMDEzMTM+OwogCXBoeS1oYW5kbGUgPSA8JnBoeTA+OwpAQCAtODEsMzIgKzgx
LDQxIEBACiAJCQkjc2l6ZS1jZWxscyA9IDwxPjsKIAogCQkJcGFydGl0aW9uQDAgewotCQkJCWxh
YmVsID0gInJvdXRlcmJvb3QiOwotCQkJCXJlZyA9IDwweDAwMDAwMCAweDAwZTAwMD47CisJCQkJ
bGFiZWwgPSAiUm91dGVyQm9vdCI7CisJCQkJcmVnID0gPDB4MCAweDIwMDAwPjsKIAkJCQlyZWFk
LW9ubHk7Ci0JCQl9OwotCi0JCQlhcnQ6IHBhcnRpdGlvbkBlMDAwIHsKLQkJCQlsYWJlbCA9ICJh
cnQiOwotCQkJCXJlZyA9IDwweDAwMGUwMDAgMHgwMDEwMDA+OwotCQkJCXJlYWQtb25seTsKLQkJ
CX07Ci0KLQkJCXBhcnRpdGlvbkBmMDAwIHsKLQkJCQlsYWJlbCA9ICJiaW9zIjsKLQkJCQlyZWcg
PSA8MHgwMDBmMDAwIDB4MDAxMDAwPjsKLQkJCQlyZWFkLW9ubHk7Ci0JCQl9OwotCi0JCQlwYXJ0
aXRpb25AMTAwMDAgewotCQkJCWxhYmVsID0gInJvdXRlcmJvb3QyIjsKLQkJCQlyZWcgPSA8MHgw
MTAwMDAgMHgwMGYwMDA+OwotCQkJCXJlYWQtb25seTsKLQkJCX07Ci0KLQkJCXBhcnRpdGlvbkAx
ZjAwMCB7Ci0JCQkJbGFiZWwgPSAic29mdF9jb25maWciOwotCQkJCXJlZyA9IDwweDAwMWYwMDAg
MHgwMDEwMDA+OworCQkJCWNvbXBhdGlibGUgPSAiZml4ZWQtcGFydGl0aW9ucyI7CisJCQkJI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47CisJCQkJI3NpemUtY2VsbHMgPSA8MT47CisKKwkJCQlwYXJ0aXRp
b25AMCB7CisJCQkJCWxhYmVsID0gImJvb3Rsb2FkZXIxIjsKKwkJCQkJcmVnID0gPDB4MCAweGUw
MDA+OworCQkJCQlyZWFkLW9ubHk7CisJCQkJfTsKKworCQkJCWhhcmRfY29uZmlnOiBwYXJ0aXRp
b25AZTAwMCB7CisJCQkJCWxhYmVsID0gImhhcmRfY29uZmlnIjsKKwkJCQkJcmVnID0gPDB4ZTAw
MCAweDEwMDA+OworCQkJCQlyZWFkLW9ubHk7CisJCQkJfTsKKworCQkJCXBhcnRpdGlvbkBmMDAw
IHsKKwkJCQkJbGFiZWwgPSAiYmlvcyI7CisJCQkJCXJlZyA9IDwweGYwMDAgMHgxMDAwPjsKKwkJ
CQkJcmVhZC1vbmx5OworCQkJCX07CisKKwkJCQlwYXJ0aXRpb25AMTAwMDAgeworCQkJCQlsYWJl
bCA9ICJib290bG9hZGVyMiI7CisJCQkJCXJlZyA9IDwweDEwMDAwIDB4ZjAwMD47CisJCQkJCXJl
YWQtb25seTsKKwkJCQl9OworCisJCQkJcGFydGl0aW9uQDFmMDAwIHsKKwkJCQkJbGFiZWwgPSAi
c29mdF9jb25maWciOworCQkJCQlyZWcgPSA8MHgxZjAwMCAweDEwMDA+OworCQkJCX07CiAJCQl9
OwogCiAJCQlwYXJ0aXRpb25AMjAwMDAgewpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5
L2dlbmVyaWMvYmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzEwLWF0aDlrLWVlcHJv
bSBiL3RhcmdldC9saW51eC9hdGg3OS9nZW5lcmljL2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9m
aXJtd2FyZS8xMC1hdGg5ay1lZXByb20KaW5kZXggYjA2YTQ4MWM5NC4uNjZiYzNjYjg4MCAxMDA2
NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2dlbmVyaWMvYmFzZS1maWxlcy9ldGMvaG90cGx1
Zy5kL2Zpcm13YXJlLzEwLWF0aDlrLWVlcHJvbQorKysgYi90YXJnZXQvbGludXgvYXRoNzkvZ2Vu
ZXJpYy9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTAtYXRoOWstZWVwcm9tCkBA
IC00Myw4ICs0Myw4IEBAIGNhc2UgIiRGSVJNV0FSRSIgaW4KIAkJYXRoOWtfcGF0Y2hfbWFjICQo
bXRkX2dldF9tYWNfYXNjaWkgdS1ib290LWVudiBldGhhZGRyKQogCQk7OwogCW1pa3JvdGlrLHJv
dXRlcmJvYXJkLXdhcC1nLTVoYWN0MmhuZCkKLQkJbWlrcm90aWtfY2FsZGF0YV9leHRyYWN0ICJh
cnQiIDB4MTAwMCAweDQ0MAotCQlhdGg5a19wYXRjaF9tYWMgJChtYWNhZGRyX2FkZCAkKG10ZF9n
ZXRfbWFjX2JpbmFyeSBhcnQgMHgxMCkgKzIpCisJCW1pa3JvdGlrX2NhbGRhdGFfZXh0cmFjdCAi
aGFyZF9jb25maWciIDB4MTAwMCAweDQ0MAorCQlhdGg5a19wYXRjaF9tYWMgJChtYWNhZGRyX2Fk
ZCAkKG10ZF9nZXRfbWFjX2JpbmFyeSBoYXJkX2NvbmZpZyAweDEwKSArMikKIAkJOzsKIAluZWMs
d2c4MDBocCkKIAkJY2FsZGF0YV9leHRyYWN0ICJhcnQiIDB4MTAwMCAweDQ0MApkaWZmIC0tZ2l0
IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2dlbmVyaWMvYmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zp
cm13YXJlLzExLWF0aDEway1jYWxkYXRhIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2dlbmVyaWMvYmFz
ZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEway1jYWxkYXRhCmluZGV4IDJj
YWI4Yzk3NTQuLjNlNzljZDNjYTQgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9hdGg3OS9nZW5l
cmljL2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMS1hdGgxMGstY2FsZGF0YQor
KysgYi90YXJnZXQvbGludXgvYXRoNzkvZ2VuZXJpYy9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQv
ZmlybXdhcmUvMTEtYXRoMTBrLWNhbGRhdGEKQEAgLTY3LDcgKzY3LDcgQEAgY2FzZSAiJEZJUk1X
QVJFIiBpbgogCQlhdGgxMGtfcGF0Y2hfbWFjICQobWFjYWRkcl9hZGQgJChtdGRfZ2V0X21hY19i
aW5hcnkgYXJ0IDB4MCkgKzIpCiAJCTs7CiAJbWlrcm90aWsscm91dGVyYm9hcmQtd2FwLWctNWhh
Y3QyaG5kKQotCQltaWtyb3Rpa19jYWxkYXRhX2V4dHJhY3QgImFydCIgMHg1MDAwIDB4ODQ0CisJ
CW1pa3JvdGlrX2NhbGRhdGFfZXh0cmFjdCAiaGFyZF9jb25maWciIDB4NTAwMCAweDg0NAogCQk7
OwogCW5lYyx3ZzgwMGhwKQogCQljYWxkYXRhX2V4dHJhY3QgImFydCIgMHg1MDAwIDB4ODQ0Ci0t
IAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
