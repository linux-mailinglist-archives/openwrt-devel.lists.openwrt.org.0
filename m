Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CA11C9FDE
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 May 2020 02:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eVQEiONdXqZ1Qj6PB74aPhR9d7/qgfVs89PzG5B9r7E=; b=Z0IjzY18+dCWbP
	nGPYPzRwoAn2wLUzyiN+oYeOaK6fnSY6eiBeDJarUeXzE8NUtFe3M2eHq6tNgfOsmYdovt+FBayjS
	gtVWOt6NEa+Ea+rGiip2McOqHSwzS3kkagl00UA1UcuZ+03Y7kYat012/CqZyH8rJc6t05o3r6O8v
	X5Fvq5S8m2HKVSMhFyI+xhj7fVs4h306Pv16nlQwB9FK3i7/ks14Hn89kIIck00kjbn0kgzaLY3c8
	zWVC+zAfYcEYQHkyFJlnvc5nwLkDnOHSnPfiUBqyQWYG9IngPqj89VSb8sWh/1hxYkGnFc8gKgTDQ
	ApXeI8KcuV+HNOWqspYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWrLw-0003Gx-U3; Fri, 08 May 2020 00:59:00 +0000
Received: from smtprelay08.ispgateway.de ([134.119.228.111])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWrLg-00039N-7Y
 for openwrt-devel@lists.openwrt.org; Fri, 08 May 2020 00:58:45 +0000
Received: from [82.207.205.5] (helo=orange.fritz.box)
 by smtprelay08.ispgateway.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 (envelope-from <me@irrelefant.net>)
 id 1jWrLR-0006lJ-K4; Fri, 08 May 2020 02:58:29 +0200
From: =?UTF-8?q?Leonardo=20M=C3=B6rlein?= <me@irrelefant.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 May 2020 02:58:24 +0200
Message-Id: <20200508005825.749631-1-me@irrelefant.net>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-Df-Sender: bWVAaXJyZWxlZmFudC5uZXQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_175844_264773_F685D852 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [134.119.228.111 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH procd 1/2] jail: SIGSEGV must not be
 forwarded to the child process
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
Cc: =?UTF-8?q?Leonardo=20M=C3=B6rlein?= <me@irrelefant.net>,
 daniel@makrotopia.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QSBzZWdmYXVsdCBpbiB1amFpbCBjYXVzZWQgdWphaWwgdG8gaGFuZyB3aXRoIG5vIGNoYW5jZSB0
byBhYm9ydC4KUmFpc2luZyB0aGUgZGVidWcgbGV2ZWwgcmV2ZWFsZWQgdGhhdCBTSUdTRUdWIHdh
cyBkZWxpdmVyZWQgdG8KdGhlIGNoaWxkIHByb2Nlc3MgaW5zdGVhZCBvZiBoYW5kbGVkIGRpcmVj
dGx5IGJ5IHVqYWlsLiBUaGUKY29ycmVzcG9uZGluZyBkZWJ1ZyBtZXNzYWdlIHdhcyB0cmlnZ2Vy
ZWQgaW5maW5pdGVseSBhZ2FpbiBhbmQKYWdhaW46CgoJZm9yd2FyZGluZyBzaWduYWwgMTEgdG8g
dGhlIGphaWxlZCBwcm9jZXNzCglmb3J3YXJkaW5nIHNpZ25hbCAxMSB0byB0aGUgamFpbGVkIHBy
b2Nlc3MKCWZvcndhcmRpbmcgc2lnbmFsIDExIHRvIHRoZSBqYWlsZWQgcHJvY2VzcwoJZm9yd2Fy
ZGluZyBzaWduYWwgMTEgdG8gdGhlIGphaWxlZCBwcm9jZXNzCglmb3J3YXJkaW5nIHNpZ25hbCAx
MSB0byB0aGUgamFpbGVkIHByb2Nlc3MKCWZvcndhcmRpbmcgc2lnbmFsIDExIHRvIHRoZSBqYWls
ZWQgcHJvY2VzcwoJZm9yd2FyZGluZyBzaWduYWwgMTEgdG8gdGhlIGphaWxlZCBwcm9jZXNzCglb
Li4uXQoKU2lnbmVkLW9mZi1ieTogTGVvbmFyZG8gTcO2cmxlaW4gPG1lQGlycmVsZWZhbnQubmV0
PgotLS0KIGphaWwvamFpbC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvamFpbC9qYWlsLmMgYi9qYWlsL2phaWwuYwpp
bmRleCA4YWU0NzdjLi42N2Q0Y2FkIDEwMDY0NAotLS0gYS9qYWlsL2phaWwuYworKysgYi9qYWls
L2phaWwuYwpAQCAtNzc1LDcgKzc3NSw3IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJn
dikKIAogCQlpZiAoIXNpZ2lzbWVtYmVyKCZzaWdtYXNrLCBpKSkKIAkJCWNvbnRpbnVlOwotCQlp
ZiAoKGkgPT0gU0lHQ0hMRCkgfHwgKGkgPT0gU0lHUElQRSkpCisJCWlmICgoaSA9PSBTSUdDSExE
KSB8fCAoaSA9PSBTSUdQSVBFKSB8fCAoaSA9PSBTSUdTRUdWKSkKIAkJCWNvbnRpbnVlOwogCiAJ
CXMuc2FfaGFuZGxlciA9IGphaWxfaGFuZGxlX3NpZ25hbDsKLS0gCjIuMjYuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
