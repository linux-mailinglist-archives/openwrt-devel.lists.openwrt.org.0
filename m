Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38701E0819
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 09:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0aZRIBxMRWKKPhgD4hCQ6quSUMiDG1ze1N7oSO6JcbQ=; b=OA8tYKQlKFoca0
	rTQhz9LV3GZtrIKNbbjwMVwzzvys6JhV3bjx+0vaDoEgvIDcs7ggKT/UsSkzHoWg0X4XNayXKhEUK
	a2MYrKvo+h1HTf630L5GeqN8704j4QHqW90GmM8z3otOe+8R3ZHj0092Z17ICquAC9S3KrryHc6xP
	AmczQZVGK6on/t9F7Oji3INIlStquCB3jlDbtbuMKnTTS+zo0FzKjB8aLGWVchhzGoQNY7wZK95py
	NMJFTEZ8RXgvb1XzxM8Jhdh4JbMtGRrZxlSaNFt/2jGjzw/Dris/I5zYcTbeaxXuq1VCOVp5SViK4
	2674P6cfFH8+vgpL/Hxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd7id-0001cU-9z; Mon, 25 May 2020 07:40:19 +0000
Received: from mail.aperture-lab.de ([2a01:4f8:171:314c::100:a1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd7iW-0007gg-0T
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 07:40:13 +0000
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1590392404;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=/jX7va6aqrq5oUHevNj2qdY888JL1imlmz9c1+FkeV4=;
 b=gNPmJFoP/VFJ+VAFRIuH7DqwyZXsy2xpmxZAzqIQgpqvpJ0akFX3TjRhgCONokhnwe+INx
 ojUQYQNgD7ZBpLcunSDtv9yuv+U0AW5KJxzhNGnCmba5dNKd2Edwz5i4z9fjFU11cY79F3
 2zO38dwrmVS7lpcCbikI1SJ3Podg3mPOTPtYCjosLbofdOqbjnQd/3lTSbXgcbJcxt0Pbl
 gXjplcvKCbMSDyYHlGVrkR1YOsADHIHodDlIpelCJ9BAOyri1baoqenRJZci1BDKEepWyQ
 2oe3LsVggPlOerjHWSrNt81/suqrHhmTw9t39j8K61Hds2ml2L5uq7yGi8XP4A==
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 May 2020 09:40:00 +0200
Message-Id: <20200525074000.2749-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_004012_241647_D35BC28A 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:171:314c:0:0:100:a1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH] layerscape: kernel: cma: increase CMA
 buffer size from 16 to 32MB
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
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <ll@simonwunderlich.de>,
 Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogTGludXMgTMO8c3NpbmcgPGxsQHNpbW9ud3VuZGVybGljaC5kZT4KCjE2TUIgYXJlIG5v
dCBlbm91Z2ggZm9yIGF0aDEwayB0byBpbml0aWFsaXplIHRocmVlIDR4NCBBQyBXYXZlIDIKUENJ
ZSBjYXJkcwooMTY4YzowMDQ2OiBRdWFsY29tbSBBdGhlcm9zIFFDQTk5ODQgODAyLjExYWMgV2F2
ZSAyIFdpcmVsZXNzIE5ldHdvcmsgQWRhcHRlcikuClRoaXMgbGVhZHMgdG8gdGhlIGZvbGxvd2lu
ZyBlcnJvciB3aGVuIHRyeWluZyB0byBpbml0aWFsaXplIHRoZSB0aGlyZApvbmU6CgpbICAgMTYu
NzQyNDc1XSBhdGgxMGtfcGNpIDAwMDI6MDE6MDAuMDogcGNpIGlycSBtc2kgb3Blcl9pcnFfbW9k
ZSAyIGlycV9tb2RlIDAgcmVzZXRfbW9kZSAwClsgICAxNi44NzQwMjRdIGF0aDEwa19wY2kgMDAw
MjowMTowMC4wOiBEaXJlY3QgZmlybXdhcmUgbG9hZCBmb3IgYXRoMTBrL3ByZS1jYWwtcGNpLTAw
MDI6MDE6MDAuMC5iaW4gZmFpbGVkIHdpdGggZXJyb3IgLTIKWyAgIDE2Ljg4NDc4NF0gYXRoMTBr
X3BjaSAwMDAyOjAxOjAwLjA6IERpcmVjdCBmaXJtd2FyZSBsb2FkIGZvciBhdGgxMGsvY2FsLXBj
aS0wMDAyOjAxOjAwLjAuYmluIGZhaWxlZCB3aXRoIGVycm9yIC0yClsgICAxNi44OTUyMjRdIGF0
aDEwa19wY2kgMDAwMjowMTowMC4wOiBEaXJlY3QgZmlybXdhcmUgbG9hZCBmb3IgYXRoMTBrL1FD
QTk5ODQvaHcxLjAvZmlybXdhcmUtNi5iaW4gZmFpbGVkIHdpdGggZXJyb3IgLTIKWyAgIDE2Ljkw
NTk1Nl0gYXRoMTBrX3BjaSAwMDAyOjAxOjAwLjA6IHFjYTk5ODQvcWNhOTk5NCBodzEuMCB0YXJn
ZXQgMHgwMTAwMDAwMCBjaGlwX2lkIDB4MDAwMDAwMDAgc3ViIDE2OGM6Y2FmZQpbICAgMTYuOTE1
ODgxXSBhdGgxMGtfcGNpIDAwMDI6MDE6MDAuMDoga2NvbmZpZyBkZWJ1ZyAwIGRlYnVnZnMgMSB0
cmFjaW5nIDAgZGZzIDEgdGVzdG1vZGUgMQpbICAgMTYuOTI1NDIyXSBhdGgxMGtfcGNpIDAwMDI6
MDE6MDAuMDogZmlybXdhcmUgdmVyIDEwLjQtMy45LjAuMi0wMDAyMSBhcGkgNSBmZWF0dXJlcyBu
by1wMnAsbWZwLHBlZXItZmxvdy1jdHJsLGJ0Y29leC1wYXJhbSxhbGxvd3MtbWVzaC1iY2FzdCxu
by1wcyBjcmMzMiA5NjI2NzgyYwpbICAgMTguMTY5MDIyXSBhdGgxMGtfcGNpIDAwMDI6MDE6MDAu
MDogYm9hcmRfZmlsZSBhcGkgMiBibWlfaWQgMDozMSBjcmMzMiBjZjU4YzNiYwpbICAgMjAuNjky
NDgyXSBjbWE6IGNtYV9hbGxvYzogYWxsb2MgZmFpbGVkLCByZXEtc2l6ZTogMjAwIHBhZ2VzLCBy
ZXQ6IC0xMgpbICAgMjUuODgyNjcwXSBhdGgxMGtfcGNpIDAwMDI6MDE6MDAuMDogd21pIHNlcnZp
Y2UgcmVhZHkgZXZlbnQgbm90IHJlY2VpdmVkClsgICAyNS45NDMxMjFdIGF0aDEwa19wY2kgMDAw
MjowMTowMC4wOiBjb3VsZCBub3QgaW5pdCBjb3JlICgtMTEwKQpbICAgMjUuOTQ5MDQ4XSBhdGgx
MGtfcGNpIDAwMDI6MDE6MDAuMDogY291bGQgbm90IHByb2JlIGZ3ICgtMTEwKQoKRml4aW5nIHRo
aXMgaXNzdWUgYnkgZG91YmxpbmcgdGhlIENNQSBidWZmZXIgc2l6ZSBmcm9tIDE2IHRvIDMyTUIu
Ck5ldyB2YWx1ZXMgaW4gL3Byb2MvbWVtaW5mbywgd2l0aCB0aHJlZSBzdWNoIGNhcmRzIGNvbm5l
Y3RlZDoKCnJvb3RAT3BlbldydDovIyBjYXQgL3Byb2MvbWVtaW5mbyB8IGdyZXAgLWkgImNtYSIK
Q21hVG90YWw6ICAgICAgICAgIDMyNzY4IGtCCkNtYUZyZWU6ICAgICAgICAgICAxOTI2OCBrQgoK
SW50ZXJlc3RpbmdseSwgb2xkZXIgUXVhbGNvbW0gQUMgY2FyZHMKKFF1YWxjb21tIEF0aGVyb3Mg
UUNBOTg2eC85ODh4IDgwMi4xMWFjIFdpcmVsZXNzIE5ldHdvcmsgQWRhcHRlcikKZG9uJ3Qgc2Vl
bSB0byB1c2UgdGhlIENvbnRpZ3VvdXMgTWVtb3J5IEFsbG9jYXRvciBhbmQgdGhlcmVmb3JlCmRv
bid0IHN1ZmZlciBmcm9tIHRoaXMgaXNzdWUuCgpTaWduZWQtb2ZmLWJ5OiBMaW51cyBMw7xzc2lu
ZyA8bGxAc2ltb253dW5kZXJsaWNoLmRlPgotLS0KIHRhcmdldC9saW51eC9sYXllcnNjYXBlL2Fy
bXY4XzY0Yi9jb25maWctNC4xNCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9sYXllcnNjYXBlL2Fy
bXY4XzY0Yi9jb25maWctNC4xNCBiL3RhcmdldC9saW51eC9sYXllcnNjYXBlL2FybXY4XzY0Yi9j
b25maWctNC4xNAppbmRleCBjMWJkNzE4MzY2Li5lZjFiYmFkZDJiIDEwMDY0NAotLS0gYS90YXJn
ZXQvbGludXgvbGF5ZXJzY2FwZS9hcm12OF82NGIvY29uZmlnLTQuMTQKKysrIGIvdGFyZ2V0L2xp
bnV4L2xheWVyc2NhcGUvYXJtdjhfNjRiL2NvbmZpZy00LjE0CkBAIC0xNDAsNyArMTQwLDcgQEAg
Q09ORklHX0NNQV9BTElHTk1FTlQ9OAogQ09ORklHX0NNQV9BUkVBUz03CiAjIENPTkZJR19DTUFf
REVCVUcgaXMgbm90IHNldAogIyBDT05GSUdfQ01BX0RFQlVHRlMgaXMgbm90IHNldAotQ09ORklH
X0NNQV9TSVpFX01CWVRFUz0xNgorQ09ORklHX0NNQV9TSVpFX01CWVRFUz0zMgogIyBDT05GSUdf
Q01BX1NJWkVfU0VMX01BWCBpcyBub3Qgc2V0CiBDT05GSUdfQ01BX1NJWkVfU0VMX01CWVRFUz15
CiAjIENPTkZJR19DTUFfU0laRV9TRUxfTUlOIGlzIG5vdCBzZXQKLS0gCjIuMjcuMC5yYzAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
