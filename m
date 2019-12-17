Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365631225C5
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Dec 2019 08:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbafynK0a2aDFjYaixpYTGZhxdX8iFWNi5CO8QPoRZQ=; b=jRi6BGr9Lz/Vfv
	SYGKAfXCLKphF6wIAvChesHOd1bOOaz3+d+s6wvlC6ntqntpqSIf54QMmlhoJPa3TxjcIKvcERBPA
	W9A9k2FdKqxvDj4p8ebCyfT9PZ5JoJYhN6mOakPUlYFm1Zw1uuWVNTKIQIsiuL5bM3nBdxGB/m/0I
	rWSkvtnYyVcY3UMPdqw5GJ7j9AsQvlmpIWnAXOW8dSrZWQzduM892kbxUUdVJrerbhOV0fUhJtskn
	zzCQWUjrv4Imu1OUxAKje+cIcH6OY/1GjOoSNmZfM0spJbrnW/YtCCzM0W8hEtx1JTsqWSdAywASN
	GDBX+NLPVe0MhdlspcEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7YM-0004yR-Lo; Tue, 17 Dec 2019 07:45:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7YA-0004xX-DX
 for openwrt-devel@lists.openwrt.org; Tue, 17 Dec 2019 07:45:48 +0000
Received: from localhost (oi.rfid.io [198.211.125.99])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 947FA4B2D;
 Tue, 17 Dec 2019 08:45:42 +0100 (CET)
Date: Tue, 17 Dec 2019 07:45:34 +0000
In-Reply-To: <20191217072836.11411-3-zajec5@gmail.com>
References: <20191217072836.11411-1-zajec5@gmail.com>
 <20191217072836.11411-3-zajec5@gmail.com>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org,
 =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
From: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <E971CD68-3F9F-4FCC-BF88-F46ECF732F30@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_234546_609575_49C3888F 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH fstools 2/3] libblkid: vfat: Fix reading
 labels which starts with byte 0x05
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
Cc: John Crispin <john@phrozen.org>,
 =?ISO-8859-1?Q?Pali_Roh=E1r?= <pali.rohar@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRGVjZW1iZXIgMTcsIDIwMTkgNzoyODozNSBBTSBVVEMsICJSYWZhxYIgTWnFgmVja2kiIDx6
YWplYzVAZ21haWwuY29tPiB3cm90ZToKPkZyb206IFBhbGkgUm9ow6FyIDxwYWxpLnJvaGFyQGdt
YWlsLmNvbT4KPgo+Y29tbWl0IGU1MjZmNTAzOTE4Y2MyOWQ4YjFjY2YzNmE1YzNhMzQ2NDVkMmJl
NmUgdXBzdHJlYW0uCj4KPldoZW4gRkFUIGRpcmVjdG9yeSBlbnRyeSBoYXMgbGVhZGluZyBieXRl
IDB4MDUgaXQgaXMgaW50ZXJwcmV0ZWQgYXMKPmJ5dGUKPjB4RTUuIFRoaXMgaXMgaG93IEZBVCBz
dG9yZXMgZmlsZSBuYW1lIHdoaWNoIHN0YXJ0cyB3aXRoIGJ5dGUgMHhFNSBhcwo+bGVhZGluZyBi
eXRlIGluIDB4RTUgaW4gRkFUIGRpcmVjdG9yeSBlbnRyeSBtZWFucyB0aGF0IGZpbGUgc2xvdCBp
cwo+ZW1wdHkuCj4KPkZpeGVzOiAjNTMzCgpGWUkgbWlzc2luZyBTb0JzCgo+LS0tCj4gbGliYmxr
aWQtdGlueS92ZmF0LmMgfCAyICsrCj4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+
Cj5kaWZmIC0tZ2l0IGEvbGliYmxraWQtdGlueS92ZmF0LmMgYi9saWJibGtpZC10aW55L3ZmYXQu
Ywo+aW5kZXggNDliODY1YS4uOTNlNDA1MyAxMDA2NDQKPi0tLSBhL2xpYmJsa2lkLXRpbnkvdmZh
dC5jCj4rKysgYi9saWJibGtpZC10aW55L3ZmYXQuYwo+QEAgLTE2Nyw2ICsxNjcsOCBAQCBzdGF0
aWMgdW5zaWduZWQgY2hhciAqc2VhcmNoX2ZhdF9sYWJlbChibGtpZF9wcm9iZQo+cHIsCj4gCQlp
ZiAoKGVudC0+YXR0ciAmIChGQVRfQVRUUl9WT0xVTUVfSUQgfCBGQVRfQVRUUl9ESVIpKSA9PQo+
IAkJICAgIEZBVF9BVFRSX1ZPTFVNRV9JRCkgewo+IAkJCURCRyhMT1dQUk9CRSwgdWxfZGVidWco
Ilx0Zm91bmQgZnMgTEFCRUwgYXQgZW50cnkgJWQiLCBpKSk7Cj4rCQkJaWYgKGVudC0+bmFtZVsw
XSA9PSAweDA1KQo+KwkJCQllbnQtPm5hbWVbMF0gPSAweEU1OwoKV291bGQgaXQgYmUgcG9zc2li
bGUgdG8gcmVwbGFjZSB0aGlzIG1hZ2ljIHZhbHVlcyB3aXRoIHNvbWUgI2RlZmluZSBvciBzdWNo
PyAKCj4gCQkJcmV0dXJuIGVudC0+bmFtZTsKPiAJCX0KPiAJfQo+LS0gCj4yLjIxLjAKPgo+Cj5f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+b3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKPm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
