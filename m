Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002131867BD
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 10:21:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j7o4EpvSiVh2vI3eRap4ycgyMCvxKOAbqI7DyIyoqCA=; b=P0CSBbr8qvCyA/
	AYueloyLV0KvkmMmJ1pTTpSYeXl7LOKJd0Oa0NSuXxjPpCwrdFKiSccXI1QCz1DkL24Vu55WGSY2h
	QGcn/sFjGavxAoFrE6XvCeMkbS7g1LQfrv1Ra9QYTo9nLcuxEjqGXRKyNk9FBNgqFHTCa2Z6iCBGc
	41upa33CMwD0Vs7Jn+YnOlTzLuGSaNHKGCIH4OekdGB7V0fsQuc4iJtKpYkCd+WzOowtM6TGW0TyR
	B1+PIbU4xGqj8D+hLEO+tAeAcY77xIoTpPfms8ojRa5thvxeTi0015ZPOnW8gbEsSGWzaBz+zDAEt
	APs1PKd06buIfWWjxLaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlwE-0000lU-IQ; Mon, 16 Mar 2020 09:21:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlw9-0000ku-2e
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 09:21:30 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C72224259;
 Mon, 16 Mar 2020 10:21:27 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 4f5dafd4;
 Mon, 16 Mar 2020 10:21:14 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 10:21:23 +0100
Message-Id: <20200316092123.16967-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_022129_269393_C4EE7603 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: 5.4: fix of_get_mac_address
 obsolete usage OOPs
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

b2ZfZ2V0X21hY19hZGRyZXNzIHJldHVybnMgdmFsaWQgcG9pbnRlciBvciBFUlJfUFRSIHNpbmNl
IDUuMiB2aWEgY29tbWl0CmQwMWY0NDljMDA4YSAoIm9mX25ldDogYWRkIE5WTUVNIHN1cHBvcnQg
dG8gb2ZfZ2V0X21hY19hZGRyZXNzIikgc28gdGhlCnBhdGNoIGZpeGVzIGZvbGxvd2luZyBPT1Bz
IG9uIG5iZzY2MTc6CgogVW5hYmxlIHRvIGhhbmRsZSBrZXJuZWwgcGFnaW5nIHJlcXVlc3QgYXQg
dmlydHVhbCBhZGRyZXNzIGZmZmZmZmVkCiBDUFU6IDEgUElEOiAxIENvbW06IHN3YXBwZXIvMCBO
b3QgdGFpbnRlZCA1LjQuMjQgIzAKIFBDIGlzIGF0IGVkbWFfYXhpX3Byb2JlKzB4NDQ0LzB4MTEx
NAogTFIgaXMgYXQgYnVzX2ZpbmRfZGV2aWNlKzB4ODgvMHg5YwoKV2hlcmUgdGhlIFBDIGNhbiBi
ZSByZXNvbHZlZCB0bzoKCiA+Pj4gbCAqZWRtYV9heGlfcHJvYmUrMHg0NDQKIDB4YzA2N2JlNWMg
aXMgaW4gZWRtYV9heGlfcHJvYmUgKC4vaW5jbHVkZS9saW51eC9zdHJpbmcuaDozNzgpLgoKID4+
PiBsICplZG1hX2F4aV9wcm9iZSsweDQzZgogMHhjMDY3YmU1NyBpcyBpbiBlZG1hX2F4aV9wcm9i
ZSAoZHJpdmVycy9uZXQvZXRoZXJuZXQvcXVhbGNvbW0vZXNzZWRtYS9lZG1hX2F4aS5jOjkzNikK
CldoaWNoIGxlYWRzIHRvIHRoZSBmb2xsb3dpbmcgY29kZSBmcmFnbWVudDoKCiA5MzUgIG1hY19h
ZGRyID0gb2ZfZ2V0X21hY19hZGRyZXNzKHBucCk7CiA5MzYgIGlmIChtYWNfYWRkcikKIDkzNyAg
ICAgIG1lbWNweShlZG1hX25ldGRldltpZHhfbWFjXS0+ZGV2X2FkZHIsIG1hY19hZGRyLCBFVEhf
QUxFTik7CgpXaGVyZSB1c2luZyBtYWNfYWRkcj0weGZmZmZmZmVkICgtRU5PREVWKSBhcyBzb3Vy
Y2UgYWRkcmVzcyBpbiBtZW1jcHkoKQppcyBjYXVzaW5nIHRoZSBPT1BzLgoKU2lnbmVkLW9mZi1i
eTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiAuLi4vZmlsZXMtNS40L2RyaXZl
cnMvbmV0L2V0aGVybmV0L3F1YWxjb21tL2Vzc2VkbWEvZWRtYV9heGkuYyAgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90
YXJnZXQvbGludXgvaXBxNDB4eC9maWxlcy01LjQvZHJpdmVycy9uZXQvZXRoZXJuZXQvcXVhbGNv
bW0vZXNzZWRtYS9lZG1hX2F4aS5jIGIvdGFyZ2V0L2xpbnV4L2lwcTQweHgvZmlsZXMtNS40L2Ry
aXZlcnMvbmV0L2V0aGVybmV0L3F1YWxjb21tL2Vzc2VkbWEvZWRtYV9heGkuYwppbmRleCBkYjVl
YWMyZjAzMDAuLmI2MTliYmJhYjlkOCAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2lwcTQweHgv
ZmlsZXMtNS40L2RyaXZlcnMvbmV0L2V0aGVybmV0L3F1YWxjb21tL2Vzc2VkbWEvZWRtYV9heGku
YworKysgYi90YXJnZXQvbGludXgvaXBxNDB4eC9maWxlcy01LjQvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvcXVhbGNvbW0vZXNzZWRtYS9lZG1hX2F4aS5jCkBAIC05MzMsNyArOTMzLDcgQEAgc3RhdGlj
IGludCBlZG1hX2F4aV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQl9CiAK
IAkJbWFjX2FkZHIgPSBvZl9nZXRfbWFjX2FkZHJlc3MocG5wKTsKLQkJaWYgKG1hY19hZGRyKQor
CQlpZiAoIUlTX0VSUihtYWNfYWRkcikpCiAJCQltZW1jcHkoZWRtYV9uZXRkZXZbaWR4X21hY10t
PmRldl9hZGRyLCBtYWNfYWRkciwgRVRIX0FMRU4pOwogCiAJCWlkeF9tYWMrKzsKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
