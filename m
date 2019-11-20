Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D00103965
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 13:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBjYUiR1ZJIBxWvq7xY3uqadTeNpwmghvoVxYqhOGgw=; b=hDOD22LduDTh4X
	axMNpZpN/ijK022YTYeacurq2Bn7Ui/wtoxnpqvX3CEee7HbCNIon4UZY/Xw1S6DthSl9Bztlp9GT
	8DAPADX9djcI06sAwT1PBBpHWbFWI8V8GOGOoot+jRgOIjHHwcMXKpb28JUy/TRv/ybjEE8MloiOD
	cg3rLUF+rt/NkcbHrPjIkmzaVwrWVG4EgFuSLFFf0NwpE+0AaRflkBxcfXJCAas0loMHxStThS9oI
	DDcgU+s/mHqXuZRcpT9XwhYVmK82+dXHzsBc+X3rLr218qXsmWGAIN9zQI77iEZHMPatTyE/wdTeZ
	5SW8jGooeYxjVQrH5jZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOfx-00054E-Dy; Wed, 20 Nov 2019 12:01:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOe6-0001a1-Ez
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 11:59:44 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C526E4671;
 Wed, 20 Nov 2019 12:59:32 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e15fef76;
 Wed, 20 Nov 2019 12:59:22 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 12:59:24 +0100
Message-Id: <20191120115926.23272-8-ynezz@true.cz>
In-Reply-To: <20191120115926.23272-1-ynezz@true.cz>
References: <20191120115926.23272-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_035942_705400_1C27CD9D 
X-CRM114-Status: UNSURE (   7.70  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 7/9] jshn: jshn_parse: fix leaks of
 memory pointed to by 'obj'
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

Rml4ZXMgZm9sbG93aW5nIGxlYWtzIG9mIG1lbW9yeToKCiAzNTIgKDcyIGRpcmVjdCwgMjgwIGlu
ZGlyZWN0KSBieXRlcyBpbiAxIGJsb2NrcyBhcmUgZGVmaW5pdGVseSBsb3N0IGluIGxvc3MgcmVj
b3JkIDMgb2YgMwogICBhdCAweDRDMzFCMjU6IGNhbGxvYwogICBieSAweDUwNDJFMUY6IGpzb25f
b2JqZWN0X25ld19hcnJheQogICBieSAweDUwNDRCMDI6IGpzb25fdG9rZW5lcl9wYXJzZV9leAog
ICBieSAweDUwNDUzMTY6IGpzb25fdG9rZW5lcl9wYXJzZV92ZXJib3NlCiAgIGJ5IDB4NTA0NTM3
RDoganNvbl90b2tlbmVyX3BhcnNlCiAgIGJ5IDB4NDAxQUE5OiBqc2huX3BhcnNlIChqc2huLmM6
MTc5KQogICBieSAweDQwMTk3NzogbWFpbiAoanNobi5jOjM3OCkKCiA3NTIgKDcyIGRpcmVjdCwg
NjgwIGluZGlyZWN0KSBieXRlcyBpbiAxIGJsb2NrcyBhcmUgZGVmaW5pdGVseSBsb3N0IGluIGxv
c3MgcmVjb3JkIDYgb2YgNgogICBhdCAweDRDMzFCMjU6IGNhbGxvYwogICBieSAweDUwNDI0Q0Y6
IGpzb25fb2JqZWN0X25ld19vYmplY3QKICAgYnkgMHg1MDQ0QjM4OiBqc29uX3Rva2VuZXJfcGFy
c2VfZXgKICAgYnkgMHg1MDQ1MzE2OiBqc29uX3Rva2VuZXJfcGFyc2VfdmVyYm9zZQogICBieSAw
eDUwNDUzN0Q6IGpzb25fdG9rZW5lcl9wYXJzZQogICBieSAweDQwMUFBOToganNobl9wYXJzZSAo
anNobi5jOjE3OSkKICAgYnkgMHg0MDE5Nzc6IG1haW4gKGpzaG4uYzozODApCgpTaWduZWQtb2Zm
LWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIGpzaG4uYyB8IDMgKysrCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvanNobi5jIGIvanNo
bi5jCmluZGV4IDAyYjM1Mjg2ZWE4Yi4uNTI5OGQ1MmU3MjlhIDEwMDY0NAotLS0gYS9qc2huLmMK
KysrIGIvanNobi5jCkBAIC0xNzgsMTIgKzE3OCwxNSBAQCBzdGF0aWMgaW50IGpzaG5fcGFyc2Uo
Y29uc3QgY2hhciAqc3RyKQogCiAJb2JqID0ganNvbl90b2tlbmVyX3BhcnNlKHN0cik7CiAJaWYg
KCFvYmogfHwganNvbl9vYmplY3RfZ2V0X3R5cGUob2JqKSAhPSBqc29uX3R5cGVfb2JqZWN0KSB7
CisJCWlmIChvYmopCisJCQlqc29uX29iamVjdF9wdXQob2JqKTsKIAkJZnByaW50ZihzdGRlcnIs
ICJGYWlsZWQgdG8gcGFyc2UgbWVzc2FnZSBkYXRhXG4iKTsKIAkJcmV0dXJuIDE7CiAJfQogCWZw
cmludGYoc3Rkb3V0LCAianNvbl9pbml0O1xuIik7CiAJYWRkX2pzb25fb2JqZWN0KG9iaik7CiAJ
ZmZsdXNoKHN0ZG91dCk7CisJanNvbl9vYmplY3RfcHV0KG9iaik7CiAKIAlyZXR1cm4gMDsKIH0K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
