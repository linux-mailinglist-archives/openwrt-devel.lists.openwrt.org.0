Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CC8EF214
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/ImoHK9cF5ma4WZJVHuJ7PIM2FbgWAp8xJ8jhNaGN8=; b=TavDi7g6KzmNbJ
	uy6jYdVy911cmrpIjCs7b0zlGe9j0FNbd2wVsUPHOpB62bmMcrqZ8FQiXDvale2LfUISMIO+91EGB
	rVdplSCDsRkXm1Q89Q0HorZZggFGyghKN5CWJCul3d9BfQ6/03kT9Vvxl0uTAzQXttx5wRNxZM17F
	HtGGtaFpGQ2s4Vs2kSzfgsrUUKjDPi8lqzN0GeH8XRNnMAxl9mh3J4FC4/2Uz5RTraaTV5f38YWqa
	zUg6UnY7+vMxdiG5PuP1/j3WzBcitDKoJYs/krpDNjv1zp6yVEPQ86rZIPtMupHGN5djVUumeJ191
	szX/32mJaI81CvQtsiMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmrc-0000wz-O5; Tue, 05 Nov 2019 00:38:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqO-00086E-BU
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0D7134D81;
 Tue,  5 Nov 2019 01:37:09 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 3a72d9a4;
 Tue, 5 Nov 2019 01:36:59 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:44 +0100
Message-Id: <20191105003657.16540-6-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163712_582037_13BC7EFC 
X-CRM114-Status: UNSURE (   6.87  )
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
Subject: [OpenWrt-Devel] [PATCH uci 05/18] tests: shunit2: fix issues
 reported by shellcheck
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

IEluIHRlc3RzLnNoIGxpbmUgMTA6CiBbIC14ICRVQ0lfQklOIF0gfHwgewogICAgICBeLS0tLS0t
XiBTQzIwODY6IERvdWJsZSBxdW90ZSB0byBwcmV2ZW50IGdsb2JiaW5nIGFuZCB3b3JkIHNwbGl0
dGluZy4KCiBJbiB0ZXN0cy5zaCBsaW5lIDYzOgogZm9yIHN1aXRlIGluICQobHMgJHtTQ1JJUFRT
X0RJUn0vKikKICAgICAgICAgICAgICBeLS0tLS0tLS0tLS0tLS0tLS0tLS1eIFNDMjA0NTogSXRl
cmF0aW5nIG92ZXIgbHMgb3V0cHV0IGlzIGZyYWdpbGUuIFVzZSBnbG9icy4KCiBJbiB0ZXN0cy5z
aCBsaW5lIDY1OgogCWNhdCAke3N1aXRlfSA+PiAke0ZVTExfU1VJVEV9CiAgICAgICAgICAgICBe
LS0tLS0tXiBTQzIwODY6IERvdWJsZSBxdW90ZSB0byBwcmV2ZW50IGdsb2JiaW5nIGFuZCB3b3Jk
IHNwbGl0dGluZy4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+
Ci0tLQogdGVzdHMvc2h1bml0Mi90ZXN0cy5zaCB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL3NodW5p
dDIvdGVzdHMuc2ggYi90ZXN0cy9zaHVuaXQyL3Rlc3RzLnNoCmluZGV4IGE3YzZkOTAwNDk4Ny4u
NzJjNDg3NDlmZWI2IDEwMDc1NQotLS0gYS90ZXN0cy9zaHVuaXQyL3Rlc3RzLnNoCisrKyBiL3Rl
c3RzL3NodW5pdDIvdGVzdHMuc2gKQEAgLTcsNyArNyw3IEBAIFRNUF9ESVI9JHtURVNUU19ESVJ9
Ii90bXAiCiBGVUxMX1NVSVRFPSR7VEVTVFNfRElSfSIvZnVsbF9zdWl0ZS5zaCIKIAogVUNJX0JJ
Tj0ke1VDSV9CSU46LSIuLi91Y2kifQotWyAteCAkVUNJX0JJTiBdIHx8IHsKK1sgLXggIiRVQ0lf
QklOIiBdIHx8IHsKIAllY2hvICJ1Y2kgaXMgbm90IHByZXNlbnQuIiA+JjIKIAlyZXR1cm4gMQog
fQpAQCAtNjAsOSArNjAsOSBAQCBhc3NlcnRGYWlsV2l0aE5vUmV0dXJuKCkgewogfQogRU9GCiAK
LWZvciBzdWl0ZSBpbiAkKGxzICR7U0NSSVBUU19ESVJ9LyopCitmb3Igc3VpdGUgaW4gIiR7U0NS
SVBUU19ESVJ9Ii8qCiBkbwotCWNhdCAke3N1aXRlfSA+PiAke0ZVTExfU1VJVEV9CisJY2F0ICIk
e3N1aXRlfSIgPj4gJHtGVUxMX1NVSVRFfQogZG9uZQogCiBlY2hvICIuICR7RE9fVEVTVH0iID4+
ICR7RlVMTF9TVUlURX0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
