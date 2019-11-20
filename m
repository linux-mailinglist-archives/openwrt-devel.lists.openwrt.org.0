Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF3F104600
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 22:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7X3zGc6MZ1lVFEfOe457etDb0kNsEhNE5Gp7WHOOT74=; b=rucThYuY4v6aY6
	5pFY8VVHLWf2WfYXDGrtNfkIF5S+rkSNkm8rjuXryTIskPnEgg9q0rbPSnIMayKAvH0ojpIjB4ScL
	alZXRgmVDN4PB+wRZuwUkF+asVld86J3p3guewjvj+TmWBHg43oUP+HbkKWcsLpzTHQlrJdip1v+j
	Fp/bCarLzu2XZtMNhTPNU029RMf4FzqlEtEbSb4/gzy7GoZr50/xa4dDSb963Bki+ChfawAz/mtfi
	Y5msvq+6GIfuYsgAO0lvZ8uqGIqtOb0PpJdZk4KmL0cMgNu2wbrHzTG/CeWkZnq+bPCOj37vMMayM
	dmB+aKbRFDbIQfqCgxwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXni-0000n4-Hd; Wed, 20 Nov 2019 21:46:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXle-0005q3-P6
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 21:44:08 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 97F914ADE;
 Wed, 20 Nov 2019 22:44:03 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 938163f7;
 Wed, 20 Nov 2019 22:43:53 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 22:43:52 +0100
Message-Id: <20191120214353.27652-10-ynezz@true.cz>
In-Reply-To: <20191120214353.27652-1-ynezz@true.cz>
References: <20191120214353.27652-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_134406_972228_D62ACB3D 
X-CRM114-Status: UNSURE (   7.65  )
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
Subject: [OpenWrt-Devel] [PATCH v2 libubox 09/10] blobmsg_json: fix possible
 uninitialized struct member
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

Y2xhbmctMTAgYW5hbHl6ZXIgcmVwb3J0cyBmb2xsb3dpbmc6CgogYmxvYm1zZ19qc29uLmM6Mjg1
OjI6IHdhcm5pbmc6IFRoZSBleHByZXNzaW9uIGlzIGFuIHVuaW5pdGlhbGl6ZWQgdmFsdWUuIFRo
ZSBjb21wdXRlZCB2YWx1ZSB3aWxsIGFsc28gYmUgZ2FyYmFnZQogICAgICAgICBzLT5pbmRlbnRf
bGV2ZWwrKzsKICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn4KClNpZ25lZC1vZmYtYnk6IFBldHIg
xaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogYmxvYm1zZ19qc29uLmMgfCA0ICsrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvYmxvYm1zZ19qc29uLmMgYi9ibG9ibXNnX2pzb24uYwppbmRleCBhNTk4MGU4YTJiNjIuLjE4
NTkyMTExYjRkZCAxMDA2NDQKLS0tIGEvYmxvYm1zZ19qc29uLmMKKysrIGIvYmxvYm1zZ19qc29u
LmMKQEAgLTMxNSw3ICszMTUsNyBAQCBzdGF0aWMgdm9pZCBzZXR1cF9zdHJidWYoc3RydWN0IHN0
cmJ1ZiAqcywgc3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgYmxvYm1zZ19qc29uXwogCiBjaGFyICpi
bG9ibXNnX2Zvcm1hdF9qc29uX3dpdGhfY2Ioc3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgYm9vbCBs
aXN0LCBibG9ibXNnX2pzb25fZm9ybWF0X3QgY2IsIHZvaWQgKnByaXYsIGludCBpbmRlbnQpCiB7
Ci0Jc3RydWN0IHN0cmJ1ZiBzOworCXN0cnVjdCBzdHJidWYgcyA9IHswfTsKIAlib29sIGFycmF5
OwogCWNoYXIgKnJldDsKIApAQCAtMzQ5LDcgKzM0OSw3IEBAIGNoYXIgKmJsb2Jtc2dfZm9ybWF0
X2pzb25fd2l0aF9jYihzdHJ1Y3QgYmxvYl9hdHRyICphdHRyLCBib29sIGxpc3QsIGJsb2Jtc2df
anNvCiAKIGNoYXIgKmJsb2Jtc2dfZm9ybWF0X2pzb25fdmFsdWVfd2l0aF9jYihzdHJ1Y3QgYmxv
Yl9hdHRyICphdHRyLCBibG9ibXNnX2pzb25fZm9ybWF0X3QgY2IsIHZvaWQgKnByaXYsIGludCBp
bmRlbnQpCiB7Ci0Jc3RydWN0IHN0cmJ1ZiBzOworCXN0cnVjdCBzdHJidWYgcyA9IHswfTsKIAlj
aGFyICpyZXQ7CiAKIAlzZXR1cF9zdHJidWYoJnMsIGF0dHIsIGNiLCBwcml2LCBpbmRlbnQpOwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
