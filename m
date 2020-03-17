Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DF1188B3E
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 17:54:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXtRGwKgCjqHHx/1v9KkIXdqFMtS/xPm5q66MdA84b8=; b=OEMkm5rtjQ2FoF
	vL7zoK7tbiAQPhPvhPqYlXRh0pCT53Ng2T8OnMRz56EIzS2pQyoE6Cuu1ezRiyumo1VfEU5Oc04bK
	kyJhUWcLnlh54UsKKqbmx8nTjWn/1IMrilp4Vhq9fVSRI3LMb74ydYX0MdVJMosEq+6HtK5hay5cZ
	aE9fbVeMZNisQ5KBKwG3lEje/bvgJM3Gx9DwnaaZqnjMHQqfZiRCBFsZNwPzVeMjloCQT+F1vXnzH
	8YHtB8kDC+JX0Z6JEHar6YG56CUbftNHevUVRZLC4C9WoT4aHkky/4dBFQnwlvTwmdLCbsM+1rrnj
	Jv/Sj9InFUgRmciR0ksQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFUF-0003jl-3V; Tue, 17 Mar 2020 16:54:39 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFTp-0003XY-Qp
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 16:54:15 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id F036360335;
 Tue, 17 Mar 2020 17:54:06 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org F036360335
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org F036360335
Received: by supercopter (sSMTP sendmail emulation);
 Tue, 17 Mar 2020 17:54:06 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Mar 2020 17:53:44 +0100
Message-Id: <20200317165344.38487-2-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200317165344.38487-1-hacks@slashdirt.org>
References: <20200317165344.38487-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_095414_024148_AC69122D 
X-CRM114-Status: GOOD (  12.23  )
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
Ynk6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4KLS0tClJlc2VuZCBhZnRl
ciByZWJhc2Ugb24gbmV3IG1pa3JvdGlrIHN1YnRhcmdldAotLS0KIC4uLi9saW51eC9hdGg3OS9k
dHMvcWNhOTU1OF9taWtyb3Rpa19yb3V0ZXJib2FyZC05MjJ1YWdzLTVocGFjZC5kdHMgfCA2ICsr
Ky0tLQogLi4uL21pa3JvdGlrL2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMS1h
dGgxMGstY2FsZGF0YSAgICB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNh
OTU1OF9taWtyb3Rpa19yb3V0ZXJib2FyZC05MjJ1YWdzLTVocGFjZC5kdHMgYi90YXJnZXQvbGlu
dXgvYXRoNzkvZHRzL3FjYTk1NThfbWlrcm90aWtfcm91dGVyYm9hcmQtOTIydWFncy01aHBhY2Qu
ZHRzCmluZGV4IDI2YTE4YWQ2YTcuLjNmMmExYTUxYTYgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51
eC9hdGg3OS9kdHMvcWNhOTU1OF9taWtyb3Rpa19yb3V0ZXJib2FyZC05MjJ1YWdzLTVocGFjZC5k
dHMKKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU4X21pa3JvdGlrX3JvdXRlcmJv
YXJkLTkyMnVhZ3MtNWhwYWNkLmR0cwpAQCAtODAsNyArODAsNyBAQAogJmV0aDAgewogCXN0YXR1
cyA9ICJva2F5IjsKIAotCW10ZC1tYWMtYWRkcmVzcyA9IDwmYXJ0IDB4MTA+OworCW10ZC1tYWMt
YWRkcmVzcyA9IDwmaGFyZF9jb25maWcgMHgxMD47CiAJcGh5LWhhbmRsZSA9IDwmcGh5ND47CiAJ
cGxsLWRhdGEgPSA8MHg4ZjAwMDAwMCAweGEwMDAwMTAxIDB4YTAwMDEzMTM+OwogCkBAIC0xMDks
OCArMTA5LDggQEAKIAkJCQlyZWFkLW9ubHk7CiAJCQl9OwogCi0JCQlhcnQ6IHBhcnRpdGlvbkBj
MDAwIHsKLQkJCQlsYWJlbCA9ICJhcnQiOworCQkJaGFyZF9jb25maWc6IHBhcnRpdGlvbkBjMDAw
IHsKKwkJCQlsYWJlbCA9ICJoYXJkX2NvbmZpZyI7CiAJCQkJcmVnID0gPDB4MDAwYzAwMCAweDAw
MDEwMDA+OwogCQkJCXJlYWQtb25seTsKIAkJCX07CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgv
YXRoNzkvbWlrcm90aWsvYmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEw
ay1jYWxkYXRhIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMvZXRjL2hv
dHBsdWcuZC9maXJtd2FyZS8xMS1hdGgxMGstY2FsZGF0YQppbmRleCA3NzczZWIxZTNhLi4yNTIx
ZjBhZDk2IDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFzZS1maWxl
cy9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEway1jYWxkYXRhCisrKyBiL3RhcmdldC9s
aW51eC9hdGg3OS9taWtyb3Rpay9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTEt
YXRoMTBrLWNhbGRhdGEKQEAgLTE4LDcgKzE4LDcgQEAgY2FzZSAiJEZJUk1XQVJFIiBpbgogImF0
aDEway9jYWwtcGNpLTAwMDA6MDE6MDAuMC5iaW4iKQogCWNhc2UgJGJvYXJkIGluCiAJbWlrcm90
aWsscm91dGVyYm9hcmQtOTIydWFncy01aHBhY2QpCi0JCW1pa3JvdGlrX2NhbGRhdGFfZXh0cmFj
dCAiYXJ0IiAweDUwMDAgMHg4NDQKKwkJbWlrcm90aWtfY2FsZGF0YV9leHRyYWN0ICJoYXJkX2Nv
bmZpZyIgMHg1MDAwIDB4ODQ0CiAJCTs7CiAJZXNhYwogCTs7Ci0tIAoyLjExLjAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
