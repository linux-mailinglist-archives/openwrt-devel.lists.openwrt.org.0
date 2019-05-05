Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF8714246
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 22:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMoi5eVbC4i7cDIXbJL8xl297+ny32tFlelzt+ikQLw=; b=A0cI+dELko/pYy
	J8zU6mHyKLvWDNmWvwCNEQv0DYGB3sC0c+W9MvuY6i4j0IrtAY64N6kSS2rxfpc7lqWcwdJRMuWXS
	rSPRwLuHmj260T81zAiSFfiRQRSH8C1c4c957GcbH0h5xkZiSGpqg8bwPjeoY77VexbuaaiavCnlZ
	qt2X6hWujo0flVUwyR4ken30vkDxau8BSSRZz21KyF0uE5EaMKAFUn16SjuFn0bYakU0/sk8tM7pp
	r/93W/xjN3+Pv1C7pPj01o+u/aUcgEcL6/LNANAsk04eN9rItdhT2szaNU7jqIOgXNTDKjOx/95un
	l9bU9056hnrXKk7UxpmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNNXE-0003NC-A6; Sun, 05 May 2019 20:14:56 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNNWo-0002yN-2F
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 20:14:32 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B8FD23EE7;
 Sun,  5 May 2019 22:14:26 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id de8a904e;
 Sun, 5 May 2019 22:14:25 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 May 2019 22:14:19 +0200
Message-Id: <1557087260-32680-2-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557087260-32680-1-git-send-email-ynezz@true.cz>
References: <1557087260-32680-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_131430_353757_23CC757B 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 1/2] build: allow selective per device
 building of initramfs
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Q3VycmVudGx5IGl0J3Mgbm90IHBvc3NpYmxlIHRvIGVuYWJsZSBidWlsZGluZyBvZiBpbml0cmFt
ZnMgaW1hZ2VzIGZvcgp0aGUgZGV2aWNlcyB3aGljaCBuZWVkIHRoZW0sIGxlYWRpbmcgdG8gcHJv
ZHVjdGlvbiBvZiBpbml0cmFtZnMgaW1hZ2VzCmZvciBldmVyeSBkZXZpY2UgdW5kZXIgdGFyZ2V0
IHdoaWNoIGhhcyBGRUFUVVJFUyArPSByYW1kaXNrLgoKU28gdGhpcyBwYXRjaCBhZGRzIGEgcG9z
c2liaWxpdHkgdG8gZW5hYmxlIEZFQVRVUkVTICs9IHNlbGVjdGl2ZS1yYW1kaXNrCmFuZCB0aGVu
IHRoZSBkZXZpY2Ugd2hpY2ggbmVlZHMgcmFtZGlzayBjYW4ganVzdCBkZWZpbmUKTkVFRFNfSU5J
VFJBTUZTPTEuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgot
LS0KIGNvbmZpZy9Db25maWctaW1hZ2VzLmluICAgIHwgIDIgKy0KIGluY2x1ZGUvaW1hZ2UubWsg
ICAgICAgICAgIHwgMTEgKysrKysrKysrKy0KIHNjcmlwdHMvdGFyZ2V0LW1ldGFkYXRhLnBsIHwg
IDEgKwogdGFyZ2V0L0NvbmZpZy5pbiAgICAgICAgICAgfCAgMyArKysKIDQgZmlsZXMgY2hhbmdl
ZCwgMTUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9jb25maWcv
Q29uZmlnLWltYWdlcy5pbiBiL2NvbmZpZy9Db25maWctaW1hZ2VzLmluCmluZGV4IDg1NDhjN2Mu
LmJlZmVkMjQgMTAwNjQ0Ci0tLSBhL2NvbmZpZy9Db25maWctaW1hZ2VzLmluCisrKyBiL2NvbmZp
Zy9Db25maWctaW1hZ2VzLmluCkBAIC04LDcgKzgsNyBAQCBtZW51ICJUYXJnZXQgSW1hZ2VzIgog
CiAJbWVudWNvbmZpZyBUQVJHRVRfUk9PVEZTX0lOSVRSQU1GUwogCQlib29sICJyYW1kaXNrIgot
CQlkZWZhdWx0IHkgaWYgVVNFU19JTklUUkFNRlMKKwkJZGVmYXVsdCB5IGlmIChVU0VTX0lOSVRS
QU1GUyB8fCBVU0VTX1NFTEVDVElWRV9JTklUUkFNRlMpCiAJCWhlbHAKIAkJICBFbWJlZCB0aGUg
cm9vdCBmaWxlc3lzdGVtIGludG8gdGhlIGtlcm5lbCAoaW5pdHJhbWZzKS4KIApkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9pbWFnZS5tayBiL2luY2x1ZGUvaW1hZ2UubWsKaW5kZXggNWIwMjIxOS4uNGYy
OTAwMiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9pbWFnZS5taworKysgYi9pbmNsdWRlL2ltYWdlLm1r
CkBAIC0zODIsNiArMzgyLDcgQEAgZGVmaW5lIERldmljZS9Jbml0CiAgIFNVUFBPUlRFRF9ERVZJ
Q0VTIDo9CiAgIElNQUdFX01FVEFEQVRBIDo9CiAKKyAgTkVFRFNfSU5JVFJBTUZTIDo9CiAgIEZJ
TEVTWVNURU1TIDo9ICQoVEFSR0VUX0ZJTEVTWVNURU1TKQogZW5kZWYKIApAQCAtNTM4LDcgKzUz
OSwxNSBAQCBkZWZpbmUgRGV2aWNlL0J1aWxkL2FydGlmYWN0CiBlbmRlZgogCiBkZWZpbmUgRGV2
aWNlL0J1aWxkCi0gICQoaWYgJChDT05GSUdfVEFSR0VUX1JPT1RGU19JTklUUkFNRlMpLCQoY2Fs
bCBEZXZpY2UvQnVpbGQvaW5pdHJhbWZzLCQoMSkpKQoraWZkZWYgQ09ORklHX1RBUkdFVF9ST09U
RlNfSU5JVFJBTUZTCitpZm5lcSAoJChDT05GSUdfVVNFU19TRUxFQ1RJVkVfSU5JVFJBTUZTKSx5
KQorICAkKGNhbGwgRGV2aWNlL0J1aWxkL2luaXRyYW1mcywkKDEpKQorZWxzZQorICBpZmRlZiBO
RUVEU19JTklUUkFNRlMKKyAgICAkKGNhbGwgRGV2aWNlL0J1aWxkL2luaXRyYW1mcywkKDEpKQor
ICBlbmRpZgorZW5kaWYKK2VuZGlmCiAgICQoY2FsbCBEZXZpY2UvQnVpbGQva2VybmVsLCQoMSkp
CiAKICAgJCQoZXZhbCAkJChmb3JlYWNoIGNvbXBpbGUsJCQoQ09NUElMRSksIFwKZGlmZiAtLWdp
dCBhL3NjcmlwdHMvdGFyZ2V0LW1ldGFkYXRhLnBsIGIvc2NyaXB0cy90YXJnZXQtbWV0YWRhdGEu
cGwKaW5kZXggMTIzOTU4Ny4uZDZmMmRkNCAxMDA3NTUKLS0tIGEvc2NyaXB0cy90YXJnZXQtbWV0
YWRhdGEucGwKKysrIGIvc2NyaXB0cy90YXJnZXQtbWV0YWRhdGEucGwKQEAgLTMyLDYgKzMyLDcg
QEAgc3ViIHRhcmdldF9jb25maWdfZmVhdHVyZXMoQCkgewogCQkvXmZwdSQvIGFuZCAkcmV0IC49
ICJcdHNlbGVjdCBIQVNfRlBVXG4iOwogCQkvXnNwZV9mcHUkLyBhbmQgJHJldCAuPSAiXHRzZWxl
Y3QgSEFTX1NQRV9GUFVcbiI7CiAJCS9ecmFtZGlzayQvIGFuZCAkcmV0IC49ICJcdHNlbGVjdCBV
U0VTX0lOSVRSQU1GU1xuIjsKKwkJL15zZWxlY3RpdmUtcmFtZGlzayQvIGFuZCAkcmV0IC49ICJc
dHNlbGVjdCBVU0VTX1NFTEVDVElWRV9JTklUUkFNRlNcbiI7CiAJCS9ecG93ZXJwYzY0JC8gYW5k
ICRyZXQgLj0gIlx0c2VsZWN0IHBvd2VycGM2NFxuIjsKIAkJL15ub21tdSQvIGFuZCAkcmV0IC49
ICJcdHNlbGVjdCBOT01NVVxuIjsKIAkJL15taXBzMTYkLyBhbmQgJHJldCAuPSAiXHRzZWxlY3Qg
SEFTX01JUFMxNlxuIjsKZGlmZiAtLWdpdCBhL3RhcmdldC9Db25maWcuaW4gYi90YXJnZXQvQ29u
ZmlnLmluCmluZGV4IDNjZjQyMzEuLjM1MzNjZjkgMTAwNjQ0Ci0tLSBhL3RhcmdldC9Db25maWcu
aW4KKysrIGIvdGFyZ2V0L0NvbmZpZy5pbgpAQCAtNDYsNiArNDYsOSBAQCBjb25maWcgVVNFU19E
RVZJQ0VUUkVFCiBjb25maWcgVVNFU19JTklUUkFNRlMKIAlib29sCiAKK2NvbmZpZyBVU0VTX1NF
TEVDVElWRV9JTklUUkFNRlMKKwlib29sCisKIGNvbmZpZyBVU0VTX1NRVUFTSEZTCiAJYm9vbAog
Ci0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
