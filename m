Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230951B0CDE
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeRlPSRPLY0/JHzYzXt4eoKHEj52AMKOFXSHA99+Eg4=; b=jzBzB2pFGzFE7z
	8xar0RUPEczRbANmM0hpJJBVjJAA/5SbB+q9JybEK5E8UnVvctqj1N96qm10952sbzrJOjfXELFek
	NA3yGhRaqO2SNFOjSW8Qx1c0mWc9E7Oe2VlnDvMpROFOCfgV1AtTRf49qFhk3odY0XDTbIvkZ9tbd
	ek0MlZUEBO20vmtNRZ+ySp9aInZcG5mjgmmoOnd1iUoypnp6ABXFGCWlxy1WG0XUbaKuL4JWdmx3A
	E6pWJYjexuDoFwwuVXJjo1oWTB0nJO7WLyUl/Pz7Vol3rzvOow3n+AkweM961TnPhtjw6QJcDSaaY
	nQ4cVwFJYUPtWp4kAHBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWd3-0003na-GH; Mon, 20 Apr 2020 13:38:29 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWae-000122-Ox
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:36:02 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 70E8F600C0;
 Mon, 20 Apr 2020 15:35:56 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 70E8F600C0
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 70E8F600C0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587389757; bh=3kT7lp5vFZuji+T6WnyfzrEUdIwafr7phvmlSdcpcrc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ye3+s1uMSjYvtritthsm/08GEHc2reN1OkWeci2Zi5xZPBQATf3kmO6H66ti9wIJe
 jcTchag8PaQ09pPKAoR+qJxXHabckFATGRdUDDgFLCc4PkHnF88v7zv6boNpw6VUsM
 dwwOyZc+jau5Bo7sM0qBKq3BHzBCtdLGJLMKSeXs=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:35:55 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:35:01 +0200
Message-Id: <20200420133503.18700-13-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200420133503.18700-1-hacks@slashdirt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_063600_981584_A4433FB5 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 12/14] package/base-files: add
 caldata_sysfsload_from_file()
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyByb3V0aW5lIGVuYWJsZXMgbG9hZGluZyBjYWxkYXRhIGJpbmFyeSB2aWEgdGhlIGtlcm5l
bCBzeXNmcyBsb2FkZXIKClNpZ25lZC1vZmYtYnk6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xh
c2hkaXJ0Lm9yZz4KLS0tCiBwYWNrYWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUgICAgICAgICAgICAg
ICAgICAgICAgIHwgIDIgKy0KIHBhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvZnVuY3Rpb25z
L2NhbGRhdGEuc2ggfCAxNSArKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFzZS1maWxl
cy9NYWtlZmlsZSBiL3BhY2thZ2UvYmFzZS1maWxlcy9NYWtlZmlsZQppbmRleCBmMWYwZjE3YTYw
Li5kOGU3YzMxODc4IDEwMDY0NAotLS0gYS9wYWNrYWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUKKysr
IGIvcGFja2FnZS9iYXNlLWZpbGVzL01ha2VmaWxlCkBAIC0xMiw3ICsxMiw3IEBAIGluY2x1ZGUg
JChJTkNMVURFX0RJUikvdmVyc2lvbi5tawogaW5jbHVkZSAkKElOQ0xVREVfRElSKS9mZWVkcy5t
awogCiBQS0dfTkFNRTo9YmFzZS1maWxlcwotUEtHX1JFTEVBU0U6PTIxOQorUEtHX1JFTEVBU0U6
PTIyMAogUEtHX0ZMQUdTOj1ub25zaGFyZWQKIAogUEtHX0ZJTEVfREVQRU5EUzo9JChQTEFURk9S
TV9ESVIpLyAkKEdFTkVSSUNfUExBVEZPUk1fRElSKS9iYXNlLWZpbGVzLwpkaWZmIC0tZ2l0IGEv
cGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi9mdW5jdGlvbnMvY2FsZGF0YS5zaCBiL3BhY2th
Z2UvYmFzZS1maWxlcy9maWxlcy9saWIvZnVuY3Rpb25zL2NhbGRhdGEuc2gKaW5kZXggZTkzNDlj
N2VlZS4uYTY0ZjA3Nzc4ZCAxMDA2NDQKLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xp
Yi9mdW5jdGlvbnMvY2FsZGF0YS5zaAorKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGli
L2Z1bmN0aW9ucy9jYWxkYXRhLnNoCkBAIC02OCw2ICs2OCwyMSBAQCBjYWxkYXRhX2Zyb21fZmls
ZSgpIHsKIAkJY2FsZGF0YV9kaWUgImZhaWxlZCB0byBleHRyYWN0IGNhbGlicmF0aW9uIGRhdGEg
ZnJvbSAkc291cmNlIgogfQogCitjYWxkYXRhX3N5c2ZzbG9hZF9mcm9tX2ZpbGUoKSB7CisJbG9j
YWwgc291cmNlPSQxCisJbG9jYWwgb2Zmc2V0PSQoKCQyKSkKKwlsb2NhbCBjb3VudD0kKCgkMykp
CisKKwkjIHRlc3QgZXh0cmFjdCB0byAvZGV2L251bGwgZmlyc3QKKwlkZCBpZj0kc291cmNlIG9m
PS9kZXYvbnVsbCBpZmxhZz1za2lwX2J5dGVzIGJzPSRjb3VudCBza2lwPSRvZmZzZXQgY291bnQ9
MSAyPi9kZXYvbnVsbCB8fCBcCisJCWNhbGRhdGFfZGllICJmYWlsZWQgdG8gZXh0cmFjdCBjYWxp
YnJhdGlvbiBkYXRhIGZyb20gJHNvdXJjZSIKKworCSMgY2FuJ3QgZmFpbCBub3cKKwllY2hvIDEg
PiAvc3lzLyRERVZQQVRIL2xvYWRpbmcKKwlkZCBpZj0kc291cmNlIG9mPS9zeXMvJERFVlBBVEgv
ZGF0YSBpZmxhZz1za2lwX2J5dGVzIGJzPSRjb3VudCBza2lwPSRvZmZzZXQgY291bnQ9MSAyPi9k
ZXYvbnVsbAorCWVjaG8gMCA+IC9zeXMvJERFVlBBVEgvbG9hZGluZworfQorCiBjYWxkYXRhX3Zh
bGlkKCkgewogCWxvY2FsIGV4cGVjdGVkPSIkMSIKIAlsb2NhbCB0YXJnZXQ9JDIKLS0gCjIuMTEu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
