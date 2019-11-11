Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D91F821C
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 22:17:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V8RbBN7nnZMWhj2+qBb75eSL/nvTSgJbQ+9zq8nUovo=; b=jHvujXBo32vK0w
	HHDMXg2iZLZUe04df0mYqamZe7JaCUJKA/IPHE+EHsHRd12Py/McJhc/a7ZiJy62pMbrIWHpIJIGx
	sz0qfKChQphnLo1+3H7eMs8YMFr6/Lcw4Pb2knUztzQP8zFzynb7bMwl4hr8lkOGjoPrBwwcTBWLo
	ICi6VfWlHxgB9hghn2xsrxE3nHXJZgXhtug852FNvZBEW4QTo2OpuTSNuoU9YiOYNcqODoLzE6EVt
	qbRFiG2n1h4EDd7XIudqtsK3Wx+q+DDKmbfbaCCBaUglTYfDQc7b+ylihMPFcAkUGLx4oNAEjFa+4
	1ql+4MQzmHx7Zg3Au25A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUH3v-0003Sk-OH; Mon, 11 Nov 2019 21:17:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUH3l-0003Rf-Jr
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 21:17:19 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CBA6F4FD6;
 Mon, 11 Nov 2019 22:17:14 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6c51a25f;
 Mon, 11 Nov 2019 22:17:04 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 11 Nov 2019 22:17:07 +0100
Message-Id: <20191111211708.7656-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_131717_803656_3461ED91 
X-CRM114-Status: UNSURE (   5.06  )
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
Subject: [OpenWrt-Devel] [PATCH] ath79: remove obsolete OF_PCI config symbols
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

VGhvc2Ugc3ltYm9scyB3ZXJlIHJlbW92ZWQgaW4ga2VybmVsIDQuMTY6CgogY29tbWl0IDQ2NzBk
NjEwZDU5MjMzYjAxN2E2ZWExZmEyNWJiZjA2ZGFiYmZmNDIKIEF1dGhvcjogICAgIFJvYiBIZXJy
aW5nIDxyb2JoQGtlcm5lbC5vcmc+CgogICAgUENJOiBNb3ZlIE9GLXJlbGF0ZWQgUENJIGZ1bmN0
aW9ucyBpbnRvIFBDSSBjb3JlCgpGaXhlczogRlMjMjU4OApTaWduZWQtb2ZmLWJ5OiBQZXRyIMWg
dGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHRhcmdldC9saW51eC9hdGg3OS9jb25maWctNC4x
OSB8IDMgLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90
YXJnZXQvbGludXgvYXRoNzkvY29uZmlnLTQuMTkgYi90YXJnZXQvbGludXgvYXRoNzkvY29uZmln
LTQuMTkKaW5kZXggNDI4NDNhMTg1ODE0Li5iZTVlNDZhYzc2OTggMTAwNjQ0Ci0tLSBhL3Rhcmdl
dC9saW51eC9hdGg3OS9jb25maWctNC4xOQorKysgYi90YXJnZXQvbGludXgvYXRoNzkvY29uZmln
LTQuMTkKQEAgLTE3OSw3ICsxNzksNiBAQCBDT05GSUdfTk9fR0VORVJJQ19QQ0lfSU9QT1JUX01B
UD15CiBDT05GSUdfTlZNRU09eQogQ09ORklHX09GPXkKIENPTkZJR19PRl9BRERSRVNTPXkKLUNP
TkZJR19PRl9BRERSRVNTX1BDST15CiBDT05GSUdfT0ZfRUFSTFlfRkxBVFRSRUU9eQogQ09ORklH
X09GX0ZMQVRUUkVFPXkKIENPTkZJR19PRl9HUElPPXkKQEAgLTE4Nyw4ICsxODYsNiBAQCBDT05G
SUdfT0ZfSVJRPXkKIENPTkZJR19PRl9LT0JKPXkKIENPTkZJR19PRl9NRElPPXkKIENPTkZJR19P
Rl9ORVQ9eQotQ09ORklHX09GX1BDST15Ci1DT05GSUdfT0ZfUENJX0lSUT15CiBDT05GSUdfUENJ
PXkKIENPTkZJR19QQ0lfQVI3MVhYPXkKIENPTkZJR19QQ0lfQVI3MjRYPXkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
