Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F293C265B
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Sep 2019 21:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aKOZ9P03VPFKES4v9GmFgZUqwnaMMrXW3Mp6kAiQNSI=; b=UNq4SEwnaSopSQ
	ernnxGUVsbgcqJYKqyQOppL3CPcARlFdDVo9PO7kT2MdCJG5zfMfiRDUXU4hQuKfTWNssfpg3+Pok
	xW2Xx5a8lKT2Xm/R1gf7NgL6/PdSCPpwzeDHHQakn+GGyKpBJbdXfG2FbJuvN1hvxTvStWG5EjeFV
	UpuYQwmYcXevQVIc7BteWwuEEdhEP+AFvOSVAKlyFZopqrOEre5wrcj7MVf/z1IKJK1rLqszwrwpe
	a/6NlkcJUBt7JHppk5CH/KNT68Gfa8t8AS8l5RQr4KY12kBdIULURUCuEQiZA5U4i5zwVjSDm9SQT
	Qbnd/Zsitkn6eQEndXkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF1kx-0008RI-J1; Mon, 30 Sep 2019 19:54:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF1km-0008Qv-AB
 for openwrt-devel@lists.openwrt.org; Mon, 30 Sep 2019 19:54:42 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id AA4E53BA0;
 Mon, 30 Sep 2019 21:54:36 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e36d27f5;
 Mon, 30 Sep 2019 21:54:27 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Sep 2019 21:54:25 +0200
Message-Id: <20190930195425.28617-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_125440_504720_4D224BA4 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07] ar71xx: fix sysupgrade to ath79 for
 wndr3700v2 and wndr3800
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

YXI3MXh4IGhhcyBqdXN0IG9uZSBib2FyZCBuYW1lIHduZHIzNzAwIGZvciB3bmRyIDM3MDAsIDM3
MDB2MiBhbmQgMzgwMAp3aGljaCBpcyBjYXVzaW5nIGlzc3VlcyB3aXRoIHN5c3VwZ3JhZGVzIHRv
IGF0aDc5IGFzIHRoZXJlIGFyZSBzZXBhcmF0ZQppbWFnZXMgZm9yIGV2ZXJ5IGJvYXJkLCBzbyBm
aXggaXQgYnkgdXNpbmcgcHJvcGVyIGJvYXJkIG5hbWUgb24gYXI3MXh4CmFzIHdlbGwuCgpSZWY6
IEZTIzI1MTAKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0t
CiB0YXJnZXQvbGludXgvYXI3MXh4L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDFfbGVkcyAgICAg
ICAgICAgIHwgNCArKystCiB0YXJnZXQvbGludXgvYXI3MXh4L2Jhc2UtZmlsZXMvZXRjL2RpYWcu
c2ggICAgICAgICAgICAgICAgICAgIHwgMiArKwogLi4uL2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVz
L2V0Yy91Y2ktZGVmYXVsdHMvMDRfbGVkX21pZ3JhdGlvbiB8IDIgKysKIHRhcmdldC9saW51eC9h
cjcxeHgvYmFzZS1maWxlcy9saWIvYXI3MXh4LnNoICAgICAgICAgICAgICAgICAgfCAzICsrKwog
dGFyZ2V0L2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoICAg
ICAgICB8IDIgKysKIDUgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hcjcxeHgvYmFzZS1maWxlcy9ldGMvYm9h
cmQuZC8wMV9sZWRzIGIvdGFyZ2V0L2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5k
LzAxX2xlZHMKaW5kZXggOGU0OWNiOWZlMjUzLi4yNmU2ODViZTFjYjkgMTAwNzU1Ci0tLSBhL3Rh
cmdldC9saW51eC9hcjcxeHgvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMV9sZWRzCisrKyBiL3Rh
cmdldC9saW51eC9hcjcxeHgvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMV9sZWRzCkBAIC05OTks
NyArOTk5LDkgQEAgd2FtMjUwKQogd25kYXAzNjApCiAJdWNpZGVmX3NldF9sZWRfcG93ZXIgInBv
d2VyIiAiUE9XRVIgR1JFRU4iICJuZXRnZWFyOmdyZWVuOnBvd2VyIiAiMSIKIAk7Owotd25kcjM3
MDApCit3bmRyMzcwMHxcCit3bmRyMzcwMHYyfFwKK3duZHIzODAwKQogCXVjaWRlZl9zZXRfbGVk
X2RlZmF1bHQgIndhbiIgIldBTiBMRUQgKGdyZWVuKSIgIm5ldGdlYXI6Z3JlZW46d2FuIiAiMCIK
IAl1Y2lkZWZfc2V0X2xlZF91c2Jwb3J0ICJ1c2IiICJVU0IiICJuZXRnZWFyOmdyZWVuOnVzYiIg
InVzYjEtcG9ydDEiCiAJOzsKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hcjcxeHgvYmFzZS1m
aWxlcy9ldGMvZGlhZy5zaCBiL3RhcmdldC9saW51eC9hcjcxeHgvYmFzZS1maWxlcy9ldGMvZGlh
Zy5zaAppbmRleCA4ZmY3NTYyN2E1MzguLjE5YWRmOGZhOTZhOSAxMDA2NDQKLS0tIGEvdGFyZ2V0
L2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVzL2V0Yy9kaWFnLnNoCisrKyBiL3RhcmdldC9saW51eC9h
cjcxeHgvYmFzZS1maWxlcy9ldGMvZGlhZy5zaApAQCAtNTI3LDcgKzUyNyw5IEBAIGdldF9zdGF0
dXNfbGVkKCkgewogCXI2MTAwfFwKIAl3bmRhcDM2MHxcCiAJd25kcjM3MDB8XAorCXduZHIzNzAw
djJ8XAogCXduZHIzNzAwdjR8XAorCXduZHIzODAwfFwKIAl3bmRyNDMwMHxcCiAJd25yMjAwMHxc
CiAJd25yMjAwMC12M3xcCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXI3MXh4L2Jhc2UtZmls
ZXMvZXRjL3VjaS1kZWZhdWx0cy8wNF9sZWRfbWlncmF0aW9uIGIvdGFyZ2V0L2xpbnV4L2FyNzF4
eC9iYXNlLWZpbGVzL2V0Yy91Y2ktZGVmYXVsdHMvMDRfbGVkX21pZ3JhdGlvbgppbmRleCA0ZGQy
MjRiNTQ5YTMuLjNlMjI1OWI3NmU4NCAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2FyNzF4eC9i
YXNlLWZpbGVzL2V0Yy91Y2ktZGVmYXVsdHMvMDRfbGVkX21pZ3JhdGlvbgorKysgYi90YXJnZXQv
bGludXgvYXI3MXh4L2Jhc2UtZmlsZXMvZXRjL3VjaS1kZWZhdWx0cy8wNF9sZWRfbWlncmF0aW9u
CkBAIC02MCw2ICs2MCw4IEBAIG9vbGl0ZS12MSkKIAk7Owogd25kYXAzNjB8XAogd25kcjM3MDB8
XAord25kcjM3MDB2MnxcCit3bmRyMzgwMHxcCiB3bnIyMDAwfFwKIHducjIyMDApCiAJbWlncmF0
ZV9sZWRzICIke2JvYXJkfTo9bmV0Z2VhcjoiCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXI3
MXh4L2Jhc2UtZmlsZXMvbGliL2FyNzF4eC5zaCBiL3RhcmdldC9saW51eC9hcjcxeHgvYmFzZS1m
aWxlcy9saWIvYXI3MXh4LnNoCmluZGV4IDg5NDgzNWIxNGQ3OS4uZDg1ODAxOTU2MDU0IDEwMDc1
NQotLS0gYS90YXJnZXQvbGludXgvYXI3MXh4L2Jhc2UtZmlsZXMvbGliL2FyNzF4eC5zaAorKysg
Yi90YXJnZXQvbGludXgvYXI3MXh4L2Jhc2UtZmlsZXMvbGliL2FyNzF4eC5zaApAQCAtNDYsMTMg
KzQ2LDE2IEBAIHduZHIzNzAwX2JvYXJkX2RldGVjdCgpIHsKIAkJCQltYWNoaW5lPSJORVRHRUFS
IFdORFJNQUMiCiAJCQllbHNlCiAJCQkJbWFjaGluZT0iTkVUR0VBUiBXTkRSMzcwMHYyIgorCQkJ
CW5hbWU9InduZHIzNzAwdjIiCiAJCQlmaQogCQkJOzsKIAkJJzI5NzYzNjU0KzE2KzY0JyopCiAJ
CQltYWNoaW5lPSJORVRHRUFSICR7bW9kZWxfc3RyaXBwZWQ6MTR9IgorCQkJbmFtZT0id25kcjM3
MDB2MiIKIAkJCTs7CiAJCScyOTc2MzY1NCsxNisxMjgnKikKIAkJCW1hY2hpbmU9Ik5FVEdFQVIg
JHttb2RlbF9zdHJpcHBlZDoxNX0iCisJCQluYW1lPSJ3bmRyMzgwMCIKIAkJCTs7CiAJCSopCiAJ
CQkjIFVua25vd24gSUQKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hcjcxeHgvYmFzZS1maWxl
cy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaCBiL3RhcmdldC9saW51eC9hcjcxeHgvYmFzZS1maWxl
cy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaAppbmRleCA5MWJmZmNiOGMxZmQuLjg2YjlhYjkzMmY2
OCAxMDA3NTUKLS0tIGEvdGFyZ2V0L2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVzL2xpYi91cGdyYWRl
L3BsYXRmb3JtLnNoCisrKyBiL3RhcmdldC9saW51eC9hcjcxeHgvYmFzZS1maWxlcy9saWIvdXBn
cmFkZS9wbGF0Zm9ybS5zaApAQCAtNjc3LDYgKzY3Nyw4IEBAIHBsYXRmb3JtX2NoZWNrX2ltYWdl
KCkgewogCQlyZXR1cm4gMQogCQk7OwogCXduZHIzNzAwfFwKKwl3bmRyMzcwMHYyfFwKKwl3bmRy
MzgwMHxcCiAJd25yMTAwMC12MnxcCiAJd25yMjAwMC12M3xcCiAJd25yNjEyLXYyfFwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
