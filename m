Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0596E80841
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 22:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nXsSlJWUmTaVbwDLIoQMOkVKpYCB5mQUhDt6yAazM8Q=; b=JayVsxcvUMbDMd
	FL0ZtZxqgbRr5bY7HnM4fyT6XgwCaYe1FARy0YJbA7KHXcw6ObEg/zRIQhcBFj1z2iODjk8gH91st
	1VfgY6Ps9MSMwy87he4ic07B6yHds7HebyXWiShz55ACNlKpIOMBcPk4yH5e9nsn5xd3LtT3/6ITs
	WFfydoGkqvuU8oyBCnhqhLwhJ4/k7C7chF4cPJ0f5xIQnw8i1at3Z++sl6Im8EIgmeYY/Lpadv8eJ
	ckx1EPauCjHiPZd2frYse6UKQccpm80tuEUUuSDXqeD0q9dNaWFS1ngQiiqLtdfj8cOgKqMafxALD
	lpvB5QMO6JrcHr8VZFbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu0SM-00015f-HE; Sat, 03 Aug 2019 20:16:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu0S2-000157-Q3
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 20:16:29 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 808774EB1;
 Sat,  3 Aug 2019 22:16:21 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a9cb52a2;
 Sat, 3 Aug 2019 22:16:14 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  3 Aug 2019 22:16:11 +0200
Message-Id: <20190803201611.21319-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_131627_227765_CF0B8C20 
X-CRM114-Status: UNSURE (   6.20  )
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
Subject: [OpenWrt-Devel] [PATCH mt76] mt7603: fix build with
 CONFIG_KERNEL_DYNAMIC_DEBUG=y
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Felix Fietkau <nbd@nbd.name>, Joan Moreau <jom@grosjo.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

V2hlbiBidWlsZGluZyB3aXRoIENPTkZJR19LRVJORUxfRFlOQU1JQ19ERUJVRz15IGVuYWJsZWQs
IHRoZSBidWlsZApmYWlscyB3aXRoIGZvbGxvd2luZyBlcnJvcjoKCiA8Y29tbWFuZC1saW5lPjow
OjM3OiBlcnJvcjogcmVkZWNsYXJhdGlvbiBvZiBlbnVtZXJhdG9yICdJRUVFODAyMTFfSFdfUkVQ
T1JUU19UWF9BQ0tfU1RBVFVTJwogPGNvbW1hbmQtbGluZT46MDozNzogbm90ZTogaW4gZGVmaW5p
dGlvbiBvZiBtYWNybyAnSUVFRTgwMjExX0hXX1RYX1NUQVRVU19OT19BTVBEVV9MRU4nCiBJbiBm
aWxlIGluY2x1ZGVkIGZyb20gbXQ3Ni0yMDE5LTA3LTIyLTc1NjU2YTQ1L210NzYwMy8uLi9tdDc2
Lmg6Mjc6MCwKICAgICAgICAgICAgICAgICBmcm9tIG10NzYtMjAxOS0wNy0yMi03NTY1NmE0NS9t
dDc2MDMvbXQ3NjAzLmg6OCwKICAgICAgICAgICAgICAgICBmcm9tIG10NzYtMjAxOS0wNy0yMi03
NTY1NmE0NS9tdDc2MDMvcGNpLmM6NzoKIHVzci9pbmNsdWRlL21hYzgwMjExL25ldC9tYWM4MDIx
MS5oOjIyOTM6Mjogbm90ZTogcHJldmlvdXMgZGVmaW5pdGlvbiBvZiAnSUVFRTgwMjExX0hXX1JF
UE9SVFNfVFhfQUNLX1NUQVRVUycgd2FzIGhlcmUKICAgSUVFRTgwMjExX0hXX1JFUE9SVFNfVFhf
QUNLX1NUQVRVUywKICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgoKVGhpcyBp
cyBjYXVzZWQgYnkgZmFpbGluZyBjaGVjay1jYy1lbnVtIGJ1aWxkIGNoZWNrIGR1ZSB0byB0aGUg
Zm9sbG93aW5nCmNvbXBpbGUgZXJyb3I6CgogLi9pbmNsdWRlL2xpbnV4L2R5bmFtaWNfZGVidWcu
aDo3NzoxNDogZXJyb3I6ICdLQlVJTERfTU9ETkFNRScgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGlu
IHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4gJ0tFUk5fTk9ERU5BTUUnPwogICAgLm1vZG5h
bWUgPSBLQlVJTERfTU9ETkFNRSwgICBcCgpTbyB0aGlzIHBhdGNoIGFkZHMgbWlzc2luZyBLQlVJ
TERfTU9ETkFNRSB2YXJpYWJsZSB0bwpDSEVDS19DQ19FTlVNX0ZMQUdTIGluIG9yZGVyIHRvIG1h
a2UgY2hlY2stY2MtZW51bSBidWlsZCBjaGVjayBjb21waWxlCmFnYWluLgoKRml4ZXM6IGM0ZTQ5
ODJmYTkyMyAoIm10NzYwMzogc2V0IElFRUU4MDIxMV9IV19UWF9TVEFUVVNfTk9fQU1QRFVfTEVO
IikKQ2M6IEZlbGl4IEZpZXRrYXUgPG5iZEBuYmQubmFtZT4KUmVwb3J0ZWQtYnk6IEpvYW4gTW9y
ZWF1IDxqb21AZ3Jvc2pvLm5ldD4KU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpA
dHJ1ZS5jej4KLS0tCiBtdDc2MDMvTWFrZWZpbGUgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL210NzYwMy9NYWtlZmlsZSBiL210NzYwMy9NYWtlZmls
ZQppbmRleCA0NmUzZGY1NmQ1Y2UuLjI5Zjg5NmE1YzNhMCAxMDA2NDQKLS0tIGEvbXQ3NjAzL01h
a2VmaWxlCisrKyBiL210NzYwMy9NYWtlZmlsZQpAQCAtMSw2ICsxLDcgQEAKIEVYVFJBX0NGTEFH
UyArPSAtV2Vycm9yIC1EQ09ORklHX01UNzZfTEVEUwogCiBDSEVDS19DQ19FTlVNX0ZMQUdTID0g
JChOT1NURElOQ19GTEFHUykgJChMSU5VWElOQ0xVREUpICQoS0JVSUxEX0NQUEZMQUdTKSAkKEtC
VUlMRF9DRkxBR1MpCitDSEVDS19DQ19FTlVNX0ZMQUdTICs9IC1ES0JVSUxEX01PRE5BTUU9JyJt
dDc2MDNlIicKIGNoZWNrLWNjLWVudW0gPSAkKGNhbGwgdHJ5LXJ1biwgZWNobyAiaW50IHYgPSAk
KDEpOyIgfCAkKENDKSAtV2Vycm9yICQoQ0hFQ0tfQ0NfRU5VTV9GTEFHUykgJCgyKSAtYyAteCBj
IC0gLW8gIiQkVE1QIix5LG4pCiAKICMgYmFja3dhcmRzIGNvbXBhdGliaWxpdHkgaGFjawoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
