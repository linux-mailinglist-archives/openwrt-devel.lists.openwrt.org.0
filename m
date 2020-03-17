Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4904A188B39
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 17:54:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TfTeIau/DJswz7y+X5uIjVh/Cpk7ots1r37H5KVschs=; b=QludKP9nrqRCHi
	wU/M6oFmIC1fz2GhDZtLwTm6FIW/d87G8laLyEoqRwpTuZYeN1Rz1rQA2TZ4at6JGCc7Nl7D3I1Z1
	Rpb26efkzqDCKgp6SxZ+IUUNutnBGOt9pX7ca+S6eoOsHcJ87hFNb0LYlz3AlUuMrdMOxU0ug39X+
	qp6GkZOfMrNEALiGtBVXR95k+YPjH7U3Z2eUqOrYvu8rMrWKxCIt4CdhT2FAShTqQRzOjKWnS/la6
	jqNrnYSjPvTop+rHNJ5f02uYQSZxT8G9CUT7b+nP8xT+tz/OAXKFuql68ghsPD7jOUr+ro4hs+/dq
	flbdHhE9k8ZJebrcz6sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFTw-0003Zw-3z; Tue, 17 Mar 2020 16:54:20 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFTo-0003WD-Bi
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 16:54:14 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id D4935600C0;
 Tue, 17 Mar 2020 17:54:02 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org D4935600C0
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org D4935600C0
Received: by supercopter (sSMTP sendmail emulation);
 Tue, 17 Mar 2020 17:54:02 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Mar 2020 17:53:43 +0100
Message-Id: <20200317165344.38487-1-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_095412_735148_C417D843 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
aGliYXV0IFZBUsOITkUgPGhhY2tzQHNsYXNoZGlydC5vcmc+Ci0tLQpSZXNlbmQgYWZ0ZXIgcmVi
YXNlIG9uIG5ldyBtaWtyb3RpayBzdWJ0YXJnZXQKLS0tCiAuLi5jYTk1NTZfbWlrcm90aWtfcm91
dGVyYm9hcmQtd2FwLWctNWhhY3QyaG5kLmR0cyB8IDYxICsrKysrKysrKysrKystLS0tLS0tLS0K
IC4uLi9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzEwLWF0aDlrLWVlcHJvbSAgICAgICAgIHwgIDQg
Ky0KIC4uLi9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEway1jYWxkYXRhICAgICAgIHwg
IDIgKy0KIDMgZmlsZXMgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU2X21pa3JvdGlrX3Jv
dXRlcmJvYXJkLXdhcC1nLTVoYWN0MmhuZC5kdHMgYi90YXJnZXQvbGludXgvYXRoNzkvZHRzL3Fj
YTk1NTZfbWlrcm90aWtfcm91dGVyYm9hcmQtd2FwLWctNWhhY3QyaG5kLmR0cwppbmRleCAwMTVi
ZDJlZmU1Li41ZmQ0NjIzNzI2IDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvYXRoNzkvZHRzL3Fj
YTk1NTZfbWlrcm90aWtfcm91dGVyYm9hcmQtd2FwLWctNWhhY3QyaG5kLmR0cworKysgYi90YXJn
ZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1NTZfbWlrcm90aWtfcm91dGVyYm9hcmQtd2FwLWctNWhh
Y3QyaG5kLmR0cwpAQCAtNTMsNyArNTMsNyBAQAogJmV0aDEgewogCXN0YXR1cyA9ICJva2F5IjsK
IAotCW10ZC1tYWMtYWRkcmVzcyA9IDwmYXJ0IDB4MTA+OworCW10ZC1tYWMtYWRkcmVzcyA9IDwm
aGFyZF9jb25maWcgMHgxMD47CiAKIAlwbGwtZGF0YSA9IDwweDAzMDAwMTAxIDB4ODAwMDAxMDEg
MHg4MDAwMTMxMz47CiAJcGh5LWhhbmRsZSA9IDwmcGh5MD47CkBAIC04MSwzMiArODEsNDEgQEAK
IAkJCSNzaXplLWNlbGxzID0gPDE+OwogCiAJCQlwYXJ0aXRpb25AMCB7Ci0JCQkJbGFiZWwgPSAi
cm91dGVyYm9vdCI7Ci0JCQkJcmVnID0gPDB4MDAwMDAwIDB4MDBlMDAwPjsKKwkJCQlsYWJlbCA9
ICJSb3V0ZXJCb290IjsKKwkJCQlyZWcgPSA8MHgwIDB4MjAwMDA+OwogCQkJCXJlYWQtb25seTsK
LQkJCX07Ci0KLQkJCWFydDogcGFydGl0aW9uQGUwMDAgewotCQkJCWxhYmVsID0gImFydCI7Ci0J
CQkJcmVnID0gPDB4MDAwZTAwMCAweDAwMTAwMD47Ci0JCQkJcmVhZC1vbmx5OwotCQkJfTsKLQot
CQkJcGFydGl0aW9uQGYwMDAgewotCQkJCWxhYmVsID0gImJpb3MiOwotCQkJCXJlZyA9IDwweDAw
MGYwMDAgMHgwMDEwMDA+OwotCQkJCXJlYWQtb25seTsKLQkJCX07Ci0KLQkJCXBhcnRpdGlvbkAx
MDAwMCB7Ci0JCQkJbGFiZWwgPSAicm91dGVyYm9vdDIiOwotCQkJCXJlZyA9IDwweDAxMDAwMCAw
eDAwZjAwMD47Ci0JCQkJcmVhZC1vbmx5OwotCQkJfTsKLQotCQkJcGFydGl0aW9uQDFmMDAwIHsK
LQkJCQlsYWJlbCA9ICJzb2Z0X2NvbmZpZyI7Ci0JCQkJcmVnID0gPDB4MDAxZjAwMCAweDAwMTAw
MD47CisJCQkJY29tcGF0aWJsZSA9ICJmaXhlZC1wYXJ0aXRpb25zIjsKKwkJCQkjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1jZWxscyA9IDwxPjsKKworCQkJCXBhcnRpdGlvbkAwIHsK
KwkJCQkJbGFiZWwgPSAiYm9vdGxvYWRlcjEiOworCQkJCQlyZWcgPSA8MHgwIDB4ZTAwMD47CisJ
CQkJCXJlYWQtb25seTsKKwkJCQl9OworCisJCQkJaGFyZF9jb25maWc6IHBhcnRpdGlvbkBlMDAw
IHsKKwkJCQkJbGFiZWwgPSAiaGFyZF9jb25maWciOworCQkJCQlyZWcgPSA8MHhlMDAwIDB4MTAw
MD47CisJCQkJCXJlYWQtb25seTsKKwkJCQl9OworCisJCQkJcGFydGl0aW9uQGYwMDAgeworCQkJ
CQlsYWJlbCA9ICJiaW9zIjsKKwkJCQkJcmVnID0gPDB4ZjAwMCAweDEwMDA+OworCQkJCQlyZWFk
LW9ubHk7CisJCQkJfTsKKworCQkJCXBhcnRpdGlvbkAxMDAwMCB7CisJCQkJCWxhYmVsID0gImJv
b3Rsb2FkZXIyIjsKKwkJCQkJcmVnID0gPDB4MTAwMDAgMHhmMDAwPjsKKwkJCQkJcmVhZC1vbmx5
OworCQkJCX07CisKKwkJCQlwYXJ0aXRpb25AMWYwMDAgeworCQkJCQlsYWJlbCA9ICJzb2Z0X2Nv
bmZpZyI7CisJCQkJCXJlZyA9IDwweDFmMDAwIDB4MTAwMD47CisJCQkJfTsKIAkJCX07CiAKIAkJ
CXBhcnRpdGlvbkAyMDAwMCB7CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90
aWsvYmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzEwLWF0aDlrLWVlcHJvbSBiL3Rh
cmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdh
cmUvMTAtYXRoOWstZWVwcm9tCmluZGV4IGY1Zjg4NDg0YjUuLjg2OTk1ZGU4OTAgMTAwNjQ0Ci0t
LSBhL3RhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQv
ZmlybXdhcmUvMTAtYXRoOWstZWVwcm9tCisrKyBiL3RhcmdldC9saW51eC9hdGg3OS9taWtyb3Rp
ay9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTAtYXRoOWstZWVwcm9tCkBAIC0x
MSw4ICsxMSw4IEBAIGNhc2UgIiRGSVJNV0FSRSIgaW4KICJhdGg5ay1lZXByb20tYWhiLTE4MTAw
MDAwLndtYWMuYmluIikKIAljYXNlICRib2FyZCBpbgogCW1pa3JvdGlrLHJvdXRlcmJvYXJkLXdh
cC1nLTVoYWN0MmhuZCkKLQkJbWlrcm90aWtfY2FsZGF0YV9leHRyYWN0ICJhcnQiIDB4MTAwMCAw
eDQ0MAotCQlhdGg5a19wYXRjaF9tYWMgJChtYWNhZGRyX2FkZCAkKG10ZF9nZXRfbWFjX2JpbmFy
eSBhcnQgMHgxMCkgKzIpCisJCW1pa3JvdGlrX2NhbGRhdGFfZXh0cmFjdCAiaGFyZF9jb25maWci
IDB4MTAwMCAweDQ0MAorCQlhdGg5a19wYXRjaF9tYWMgJChtYWNhZGRyX2FkZCAkKG10ZF9nZXRf
bWFjX2JpbmFyeSBoYXJkX2NvbmZpZyAweDEwKSArMikKIAkJOzsKIAkqKQogCQljYWxkYXRhX2Rp
ZSAiYm9hcmQgJGJvYXJkIGlzIG5vdCBzdXBwb3J0ZWQgeWV0IgpkaWZmIC0tZ2l0IGEvdGFyZ2V0
L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8x
MS1hdGgxMGstY2FsZGF0YSBiL3RhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9iYXNlLWZpbGVz
L2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTEtYXRoMTBrLWNhbGRhdGEKaW5kZXggNmViOWE5M2I3
NS4uNzc3M2ViMWUzYSAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jh
c2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMS1hdGgxMGstY2FsZGF0YQorKysgYi90
YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zpcm13
YXJlLzExLWF0aDEway1jYWxkYXRhCkBAIC0xMSw3ICsxMSw3IEBAIGNhc2UgIiRGSVJNV0FSRSIg
aW4KICJhdGgxMGsvY2FsLXBjaS0wMDAwOjAwOjAwLjAuYmluIikKIAljYXNlICRib2FyZCBpbgog
CW1pa3JvdGlrLHJvdXRlcmJvYXJkLXdhcC1nLTVoYWN0MmhuZCkKLQkJbWlrcm90aWtfY2FsZGF0
YV9leHRyYWN0ICJhcnQiIDB4NTAwMCAweDg0NAorCQltaWtyb3Rpa19jYWxkYXRhX2V4dHJhY3Qg
ImhhcmRfY29uZmlnIiAweDUwMDAgMHg4NDQKIAkJOzsKIAllc2FjCiAJOzsKLS0gCjIuMTEuMAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
