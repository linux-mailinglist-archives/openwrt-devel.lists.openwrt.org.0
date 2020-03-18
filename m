Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F2C18A81A
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 23:28:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRDO3T7U74jtFW2nMEmM8Gt1AmXIM1ZTkQCIBmf2IMI=; b=E6FVEtR4vgF/RX
	Doy63ISw6OTgwSD6H81f3l8M/MuPGDOOeVIhAHlBZ6WZ6IuSvI7oI9d1z1Rf2N1Cz1fYGdph7ceDL
	ZIcuZucpvhkdlhB0/0W3DIrljeYNddZdOfLoL5CR64OsDPTRG87+W9COOE2QCLWgic8mHqsTWDi+b
	abiJZ7KBbA/2VVSonsU8JhAE/8R3gOko+uvfzav9maF8lQLcOt3YcnTqf9EVbIEmwSJrhhwoOXBC+
	mjMAXWKYnTUV93vMmb028knfDO4YuC2LZLvxH0OJF/vIoin+3AgQSj2yh+LYvcc4HHT/awFrQmnUZ
	mrl6eo3lhWQIS67uMMLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhAG-0006xC-4B; Wed, 18 Mar 2020 22:27:52 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhA4-0006ua-NM
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 22:27:42 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 630E74C1A;
 Wed, 18 Mar 2020 23:27:37 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f77fed7e;
 Wed, 18 Mar 2020 23:27:24 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:07 +0100
Message-Id: <20200318222713.1495-4-ynezz@true.cz>
In-Reply-To: <20200318222713.1495-1-ynezz@true.cz>
References: <20200318222713.1495-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_152740_918591_97E01A66 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/9] uboot-sunxi: add support for Olimex
 A64-Olinuxino eMMC
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

QWRkaW5nIFUtQm9vdCBpbWFnZSBmb3IgT2xpbWV4IEE2NC1PbGludXhpbm8gZU1NQywgaW5jbHVk
aW5nIHBhdGNoIHdoaWNoCmFkZHMgZU1NQyBib290IHBhcnRpdGlvbiBjb25maWd1cmF0aW9uIGNv
bW1hbmRzLgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0t
CiBwYWNrYWdlL2Jvb3QvdWJvb3Qtc3VueGkvTWFrZWZpbGUgICAgICAgICAgICAgfCAgOSArKysr
KysKIC4uLnV4aW5vLWVtbWMtYWRkLWVNTUMtYm9vdC1wYXJ0LWNvbmZpZy5wYXRjaCB8IDI5ICsr
KysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IHBhY2thZ2UvYm9vdC91Ym9vdC1zdW54aS9wYXRjaGVzLzI2MC1jb25m
aWdzLWE2NC1vbGludXhpbm8tZW1tYy1hZGQtZU1NQy1ib290LXBhcnQtY29uZmlnLnBhdGNoCgpk
aWZmIC0tZ2l0IGEvcGFja2FnZS9ib290L3Vib290LXN1bnhpL01ha2VmaWxlIGIvcGFja2FnZS9i
b290L3Vib290LXN1bnhpL01ha2VmaWxlCmluZGV4IDM1YzQwOTg0Yjg3Ni4uNTQ0YjJhMmM2Zjdi
IDEwMDY0NAotLS0gYS9wYWNrYWdlL2Jvb3QvdWJvb3Qtc3VueGkvTWFrZWZpbGUKKysrIGIvcGFj
a2FnZS9ib290L3Vib290LXN1bnhpL01ha2VmaWxlCkBAIC0zMyw2ICszMywxNCBAQCBkZWZpbmUg
VS1Cb290L2E2NC1vbGludXhpbm8KICAgVUVOVjo9YTY0CiBlbmRlZgogCitkZWZpbmUgVS1Cb290
L2E2NC1vbGludXhpbm8tZW1tYworICBCVUlMRF9TVUJUQVJHRVQ6PWNvcnRleGE1MworICBOQU1F
Oj1PbGltZXggQTY0LU9MaW51WGlubyBlTU1DCisgIEJVSUxEX0RFVklDRVM6PW9saW1leF9hNjQt
b2xpbnV4aW5vLWVtbWMKKyAgREVQRU5EUzo9K1BBQ0tBR0VfdS1ib290LW9saW1leF9hNjQtb2xp
bnV4aW5vLWVtbWM6YXJtLXRydXN0ZWQtZmlybXdhcmUtc3VueGkKKyAgVUVOVjo9YTY0CitlbmRl
ZgorCiBkZWZpbmUgVS1Cb290L0ExMC1PTGludVhpbm8tTGltZQogICBCVUlMRF9TVUJUQVJHRVQ6
PWNvcnRleGE4CiAgIE5BTUU6PUExMCBPTGludVhpbm8gTElNRQpAQCAtMjY5LDYgKzI3Nyw3IEBA
IGVuZGVmCiAKIFVCT09UX1RBUkdFVFMgOj0gXAogCWE2NC1vbGludXhpbm8gXAorCWE2NC1vbGlu
dXhpbm8tZW1tYyBcCiAJQTEwLU9MaW51WGluby1MaW1lIFwKIAlBMTMtT0xpbnVYaW5vIFwKIAlB
MjAtT0xpbnVYaW5vLUxpbWUgXApkaWZmIC0tZ2l0IGEvcGFja2FnZS9ib290L3Vib290LXN1bnhp
L3BhdGNoZXMvMjYwLWNvbmZpZ3MtYTY0LW9saW51eGluby1lbW1jLWFkZC1lTU1DLWJvb3QtcGFy
dC1jb25maWcucGF0Y2ggYi9wYWNrYWdlL2Jvb3QvdWJvb3Qtc3VueGkvcGF0Y2hlcy8yNjAtY29u
Zmlncy1hNjQtb2xpbnV4aW5vLWVtbWMtYWRkLWVNTUMtYm9vdC1wYXJ0LWNvbmZpZy5wYXRjaApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmE0NDhiODMxOWY1ZQotLS0g
L2Rldi9udWxsCisrKyBiL3BhY2thZ2UvYm9vdC91Ym9vdC1zdW54aS9wYXRjaGVzLzI2MC1jb25m
aWdzLWE2NC1vbGludXhpbm8tZW1tYy1hZGQtZU1NQy1ib290LXBhcnQtY29uZmlnLnBhdGNoCkBA
IC0wLDAgKzEsMjkgQEAKK0Zyb20gN2ZhMjZjMjg3YjIyNWM1ZTQyYmU2ZDFhODFkNDU1OTJlYzQ1
YmQ5YyBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKK0Zyb206ID0/VVRGLTg/cT9QZXRyPTIwPUM1
PUEwdGV0aWFyPz0gPHluZXp6QHRydWUuY3o+CitEYXRlOiBXZWQsIDE4IE1hciAyMDIwIDEyOjU5
OjAxICswMTAwCitTdWJqZWN0OiBbUEFUQ0hdIGNvbmZpZ3M6IGE2NC1vbGludXhpbm8tZW1tYzog
YWRkIGVNTUMgYm9vdCBwYXJ0IGNvbmZpZworIGNvbW1hbmRzCitNSU1FLVZlcnNpb246IDEuMAor
Q29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04CitDb250ZW50LVRyYW5zZmVy
LUVuY29kaW5nOiA4Yml0CisKK21tYyBib290YnVzIGFuZCBwYXJ0Y29uZiBjb21tYW5kcyBhcmUg
bmVlZGVkIGluIG9yZGVyIHRvIGJlIGFibGUgdG8KK2NvbmZpZ3VyZSBib290aW5nIGZyb20gc2Vw
YXJhdGUgYm9vdDAvYm9vdDEgZU1NQyBwYXJ0aXRpb25zLgorCitTaWduZWQtb2ZmLWJ5OiBQZXRy
IMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgorLS0tCisgY29uZmlncy9hNjQtb2xpbnV4aW5vLWVt
bWNfZGVmY29uZmlnIHwgMSArCisgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCisKK2Rp
ZmYgLS1naXQgYS9jb25maWdzL2E2NC1vbGludXhpbm8tZW1tY19kZWZjb25maWcgYi9jb25maWdz
L2E2NC1vbGludXhpbm8tZW1tY19kZWZjb25maWcKK2luZGV4IDg0NDNhNmRhZTllMy4uOWE5NmE5
NjRiMWRjIDEwMDY0NAorLS0tIGEvY29uZmlncy9hNjQtb2xpbnV4aW5vLWVtbWNfZGVmY29uZmln
CisrKysgYi9jb25maWdzL2E2NC1vbGludXhpbm8tZW1tY19kZWZjb25maWcKK0BAIC0xMiw2ICsx
Miw3IEBAIENPTkZJR19VU0VfUFJFQk9PVD15CisgQ09ORklHX0RFRkFVTFRfREVWSUNFX1RSRUU9
InN1bjUwaS1hNjQtb2xpbnV4aW5vLWVtbWMiCisgQ09ORklHX1NZU19SRUxPQ19HRF9FTlZfQURE
Uj15CisgQ09ORklHX1NVTjhJX0VNQUM9eQorK0NPTkZJR19TVVBQT1JUX0VNTUNfQk9PVD15Cisg
Q09ORklHX1VTQl9FSENJX0hDRD15CisgQ09ORklHX1VTQl9PSENJX0hDRD15CisgQ09ORklHX1NZ
U19VU0JfRVZFTlRfUE9MTF9WSUFfSU5UX1FVRVVFPXkKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
